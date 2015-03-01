def translate(binary)
  characters = []
  binary.scan(/\d{8}/) do |byte|
    characters.push(byte.to_i(2).chr)
  end
  characters.join
end
