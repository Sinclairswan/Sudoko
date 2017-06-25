def not_in_array(array)
  9.times do |x|
    x = (x+1).to_s
    return x if array.include?(x) == false
  end
end  # returns a "number"
