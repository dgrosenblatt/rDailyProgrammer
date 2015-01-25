require 'pry'

class Game
  def initialize(args)
    @left = args[:left]
    @right = args[:right]
    compare(@left, @right)
  end

  def compare(left, right)
    left_chars = left.chars
    right_chars = right.chars

    left_chars.each_with_index do |left_ch, left_index|
      right_chars.each_with_index do |right_ch, right_index|
        if left_ch == right_ch
          left_chars[left_index] = right_chars[right_index] = nil
        end
      end
    end

    left_score = left_chars.compact.length
    right_score = right_chars.compact.length
    if left_score == right_score
      puts "It's a tie."
    elsif left_score > right_score
      puts "Left wins."
    else
      puts "Right wins."
    end
    puts "Left: #{left_score}: #{left_chars.compact.join}."
    puts "Right: #{right_score}: #{right_chars.compact.join}."
  end


end

Game.new({ left: "because", right: "cause" })
Game.new({ left: "hello", right: "below"})
Game.new({ left: "hit", right: "miss"})
Game.new({ left: "rekt", right: "pwn"})
Game.new({ left: "combo", right: "jumbo"})
Game.new({ left: "critical", right: "optical"})
Game.new({ left: "isoenzyme", right: "apoenzyme"})
Game.new({ left: "tribesman", right: "brainstem"})
Game.new({ left: "blames", right: "nimble"})
Game.new({ left: "yakuza", right: "wizard"})
Game.new({ left: "longbow", right: "blowup"})
