class Quote
  def initialize(text, book)
    @text = text
    @book = book.readlines
  end

  def line_num
    @line_num ||= @book.each_with_index do |line, index|
      return index if line.include? @text
    end
  end

  def act
    @book[0...line_num].reverse.each {|line| return line.chop.chop if line.include? "ACT"}
  end

  def scene
    @book[0...line_num].reverse.each {|line| return line[0..6] if line.include? "SCENE"}
  end

  def characters_in_scene
    [speaker, "SHAKESPEARE"]
  end

  def speaker
    @book[passage_start-1][2..-3]
  end

  def passage_text
    @book[passage_start..passage_end].join
  end

  def passage_with_info
    """
    #{act}
    #{scene}
    Characters in scene: #{characters_in_scene.join(', ')}
    Spoken by #{speaker}:
    #{passage_text}
    """
  end

  private
  def passage_start
    @book[0...line_num].reverse.each_with_index do |line, index|
      return (line_num - index) if line[2] != " "
    end
  end

  def passage_end
    @book[line_num..-1].each_with_index do |line, index|
      return (line_num + index) if line == "\n"
    end
  end
end
