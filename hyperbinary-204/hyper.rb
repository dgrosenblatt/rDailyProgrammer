require 'benchmark'

def to_dec(hyper)
  sum = 0
  hyper.split('').reverse.each_with_index do |n, index|
    sum += (n.to_i)*(2**index)
  end
  sum
end

def to_hyper(dec)
  max_power = 0
  loop do
    if (2**max_power) > dec
      break
    else
      max_power += 1
    end
  end

  max_hyper = "1" + ("0" * max_power)

  possibilities = []

  (0..max_hyper.to_i).each do |n|
    if !(n.to_s.split('') & ("3".."9").to_a).any?
      possibilities << n.to_s
    end
  end

  solutions = []

  possibilities.each do |poss|
    if to_dec(poss) == dec
      solutions << poss
    end
  end

  solutions
end

puts Benchmark.measure { puts to_hyper(18) }
puts Benchmark.measure { puts to_hyper(73) }
