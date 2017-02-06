class SplitBrackets

  def solution(string)
    return 0 if string == ""
    string.split('').each_with_index do |paren, index|
      open_paren_count = string[0..index].count('(')
      close_paren_count = string[(index + 1)..-1].count(')')
      if open_paren_count == close_paren_count
        return index + 1
      end
    end
  end
end
