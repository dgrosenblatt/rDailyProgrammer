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

  def passage_text
    @book[passage_start..passage_end].join
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
