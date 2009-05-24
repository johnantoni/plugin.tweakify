class String
  def encode64
    require "base64"
    return Base64.encode64(self)
  end

  def decode64
    require "base64"
    return Base64.decode64(self)
  end    
end

puts "hello".encode64
puts "hello".encode64