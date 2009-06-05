module Dates

  def simple_date(obj)
    return "#{obj['(1i)']}-#{obj['(2i)']}-#{obj['(2i)']}"
  end

  def get_age(dob)
    return nil unless dob
    return ((Date.today - dob) / 365.25).floor.to_s
    # another method
    # now = Time.now
    # now.year - dob.year - (dob.to_time.change(:year => now.year) > now ? 1 : 0)
  end

  def get_monthname(num)
    return nil unless num
    return Time.mktime(2000, num, 1).strftime("%b")
  end

end