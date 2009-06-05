class Object

  def self.methods
    return self.methods.sort
  end

  def self.numeric?
    true if Float(self) rescue false
  end
  
end