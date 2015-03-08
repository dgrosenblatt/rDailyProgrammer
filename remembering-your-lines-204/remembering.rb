require 'pry'

def remembering(phrase)
  macbeth_lines = File.open("macbeth.txt").readlines

  match_index = -1
  macbeth_lines.each_with_index do |line, index|
    if line.include? phrase
      match_index = index
    end
  end

  quote_indexes = Array.new(1) { match_index }

  ahead = 1
  while macbeth_lines[match_index + ahead] != "\n"
    quote_indexes << (match_index + ahead)
    ahead += 1
  end

  back = 1
  while macbeth_lines[match_index - back][2] == " "
    quote_indexes.insert(0,(match_index - back))
    back += 1
  end

  macbeth_lines[quote_indexes.first..quote_indexes.last].join
end

puts remembering("Eye of newt")
puts
puts remembering("rugged Russian bear")
