def block_word?(string)
  block = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'],
  ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

  arr1 = block.map {|a| a[0]}
  arr2 = block.map {|a| a[1]}

  string.each_char do |c|
    if arr1.include?(c.upcase)
      index = arr1.index(c.upcase)
      arr1.delete_at(index)
      arr2.delete_at(index)
    elsif arr2.include?(c.upcase)
      index = arr2.index(c.upcase)
      arr1.delete_at(index)
      arr2.delete_at(index)
    else
      return false
    end
  end

  true
end
block_word?('BUTCH')
