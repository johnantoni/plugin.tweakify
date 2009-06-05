class Array
  def paginate(id)
    # return positions for current, prev & next for value 'id'
    i = self.index(id)
    pos = {:prev => nil, :next => nil, :current => i}
    if i
      pos[:prev] = i-1 < 0 ? nil : i-1
      pos[:next] = i+1 == self.length ? nil : i+1
    end
    return pos
  end

  def paginate_values(id)
    pos = self.paginate(id)
    data = {:prev => nil, :next => nil, :current => nil}
    if pos[:current]
      data[:prev] = self[pos[:prev]] unless pos[:prev].blank?
      data[:next] = self[pos[:next]] unless pos[:next].blank?
      data[:current] = self[pos[:current]] unless pos[:current].blank?
    end
    return data
  end
end
