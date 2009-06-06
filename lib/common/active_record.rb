class ActiveRecord::Base
  def self.to_a_simplify
    # takes table object and breaks it down into a simple array
    return self.to_enum.map {|e| e::id }
  end

  def self.simply_paginate(id)
    # converts table into array, then finds prev/next/current & returns as hash
    return self.to_a_simplify.simply_paginate_array(id)
  end
end
