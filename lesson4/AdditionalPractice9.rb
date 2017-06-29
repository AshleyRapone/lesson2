# Create a method that creates a string that has each word capitalized

words = "the flintstones rock"

words.split.map! {|word| word.capitalize}.join(' ')



=begin
Storage/setup: transform the string

Method:        use map to transform the split string

Block:         for each word capitalize it and then take the value returned from block and join it
=end
