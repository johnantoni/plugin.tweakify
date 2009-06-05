class String

  def clean(arr)
    # recursive gsub with an array (remove all found)
    s = self
    arr.each {|item| s = s.gsub(item,'')} unless arr.blank?
    return s
  end

  def escape
    require 'uri'
    s = self
    s = URI.escape(self) if self.length > 0
    return s
  end

  def nl2br
    self.gsub(/\n/, '<br>')
  end

  def strip_object_tag
    self.gsub(/<object(| [^>]*)>/i, ' Flash Video ')
  end

  def truncate_words(length = 30, end_string = ' …')
    words = self.split()
    words[0..(length-1)].join(' ') + (words.length > length ? end_string : '')
  end

  def strip_spaces
    return self.gsub(' ', '')
  end

  def trim
    return self.strip
  end

  def lrtrim(l, r)
    # trim left & right (e.g. 10 from left, 3 from right)
    return self[l, self.length-(l+r)]
  end

  def encode64
    require "base64"
    return Base64.encode64(self)
  end

  def decode64
    require "base64"
    return Base64.decode64(self)
  end    

  def to_b
    return b = self.strip.downcase == "yes" ? true : false
  end

end
