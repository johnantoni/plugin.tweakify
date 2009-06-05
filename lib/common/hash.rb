class Hash
  def paginate(id)
    # return values in current, prev & next
    return self.flatten_values.paginate_values(id)
  end

  def flatten
    # flatten a hash into an array (keeping keys & values)
    to_a.flatten!
  end

  def flatten_values
    # flatten hash into array (keeping values only)
    a = Array.new
    self.each {|k,v| a.push(v) }
    return a
  end
end
