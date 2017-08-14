def letter_percentages(string)
  size = string.length.to_f
  lowercase = string.count('a-z')
  uppercase = string.count('A-Z')
  neither = string.count('^a-zA-Z')
  percent_lower = (lowercase / size) * 100
  percent_upper = (uppercase / size) * 100
  percent_neither = (neither / size) * 100
  result = {}
  result[:lowercase] = percent_lower
  result[:uppercae] = percent_upper
  result[:neither] = percent_neither
  result
end

letter_percentages('abCdef 123')
