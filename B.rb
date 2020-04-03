def valid?(s)
  return false unless s.is_a?(String)
  big_s = s
  return false if s.upcase != big_s
  true
end


def abc(s)
  return nil unless valid?(s)
  s.scan(/ABC/).size
end

puts abc("ZABCZABC") == 2
puts abc("THREEONEFOURONEFIVE") == 0
puts abc(111) == nil