require 'pry'

def to_dec(hyper)
  sum = 0
  hyper.split('').reverse.each_with_index do |n, index|
    sum += (n.to_i)*(2**index)
  end
  sum
end


puts to_dec("1021")
