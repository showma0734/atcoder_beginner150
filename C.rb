def valid?(n, p, q)
  return false unless n.is_a?(Integer)
  return false unless p.all?{|obj| obj.is_a?(Integer)}
  return false unless q.all?{|obj| obj.is_a?(Integer)}
  return false if n < 2 || n > 8
  return false unless n*2 == p.size + q.size
  true
end

def count_order(n, p, q)
  return nil unless valid?(n, p, q)
  permutation = (1..n).to_a.permutation(n).to_a
  a = nil
  b = nil
  sum = 0
  permutation.each do |per|
    a = sum if per == p
    b = sum if per == q
    sum += 1
  end
  p (a - b).abs
end

#test
puts count_order(3,[1,3,2],[3,1,2]) == 3
puts count_order(8,[7, 3, 5, 4, 2, 1, 6, 8],[3, 8, 2, 5, 4, 6, 7, 1]) == 17517