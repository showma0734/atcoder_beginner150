def valid?(k,x)
  return false unless [k,x].all?{|obj| obj.is_a?(Integer)}
  return false if k < 1 || k > 100
  return false if x < 1 || x > 10**5
  true
end

def fifty_yen(k,x)
  return nil unless valid?(k,x)
  if k*500 >= x
    "Yes"
  else
    "No"
  end
end

puts fifty_yen(5,1000) == "Yes"
puts fifty_yen(1,501) == "No"
puts fifty_yen("a","a") == nil