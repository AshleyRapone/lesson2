def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

balanced?('What (is) this?') # true
balanced?('What is) this?') # false
balanced?('What (is this?') # false
balanced?('((What) (is this))?') # true
balanced?('((What)) (is this))?') # false
balanced?('Hey!') # true
balanced?(')Hey!(') # false
balanced?('What ((is))) up(')# false
