module Patches

  def patch_uploads(file)
    # patch for file uploads, upload < 20k are stringio streams
    # this makes sure uploads are always Tempfile objects
    if file.kind_of? StringIO
      file.rewind
      realFile = Tempfile.new(file.original_filename)
      while not file.eof?
        realFile.write file.read
      end
    else
      realFile = file
    end
    return realFile
  end

end