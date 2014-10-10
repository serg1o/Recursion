def fibs(n)
  seq = []
  0.upto(n) do |index|
    ((index == 0) || (index == 1)) ? result = index : result = seq[index - 1] + seq[index - 2]
    seq.push(result)
  end
  return seq
end


def fibs_rec(n, seq = [0])
  return seq if n == 0
  return seq.push(1) if n == 1
  fibs_rec(n - 1, seq)
  seq.push(seq[-1] + seq[-2])  
end

puts "\nIterative solution"
puts fibs(10).inspect
puts "\nRecursive solution"
puts fibs_rec(10).inspect

