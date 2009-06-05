module Links

  def generate_links_from_hash(arrs)
    s = ""
    i = 0
    arrs.each do |key, value|
      s += "<a href='/#{value}' title='#{key}' alt='#{key}'>#{key}</a>"
      s += "&nbsp; " if i < (arrs.length-1)
      i += 1
    end
    return s
  end

end