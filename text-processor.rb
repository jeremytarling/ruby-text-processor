
lines = File.readlines("text.txt")

line_count = lines.size 
text = lines.join
total_characters = text.length
total_characters_nospace = text.gsub(/\s+/, '').length
words = text.split
word_count = text.split.length
sentence_count = text.split(/\.|\?|!/).length
para_count = text.split(/\n\n/).length
stopwords = %w{the a by on for of are with just but add to my I has some in}
keywords = words.select { |word| !stopwords.include?(word) }

puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{total_characters_nospace} characters excluding spaces"
puts "#{word_count} words"
puts "#{keywords.length} keywords (excluding: the a by on for of are with just but add to my I has some in)"
puts "#{sentence_count} sentences"
puts "#{para_count} paragraphs"
puts "#{sentence_count / para_count} sentecnes per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"


