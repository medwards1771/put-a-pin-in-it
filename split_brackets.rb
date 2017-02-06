class SplitBrackets
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def method_name
    index = 0
    while index < string.size
      open_paren_count = string[0..index].count('(')
      close_paren_count = string[(index + 1)..-1].count(')')
      if open_paren_count == close_paren_count
        return index + 1
      end
      index += 1
    end
  end

  def method
    string.split('').each_with_index do |paren, index|
      open_paren_count = string[0..index].count('(')
      close_paren_count = string[(index + 1)..-1].count(')')
      if open_paren_count == close_paren_count
        return index + 1
      end
    end
  end
end
