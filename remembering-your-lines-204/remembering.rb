require_relative 'quote'
require 'pry'
# "Eye of newt"
# "rugged Russian bear"
# "break this enterprise"
# "Yet who would have thought"

macbeth = File.open("macbeth.txt")
newt = Quote.new("Eye of newt", macbeth)
macbeth.close
puts newt.passage_with_info
