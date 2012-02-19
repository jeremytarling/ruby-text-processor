# read in a file
lines = File.readlines(ARGV[0])
stopwords = %w{the a by on for of are with just but add to my I has some in}
line_count = lines.size 
text = lines.join

# count the characters
total_characters = text.length
total_characters_nospace = text.gsub(/\s+/, '').length

# count the words, sentences and paragraphs
words = text.split
word_count = text.split.length
sentence_count = text.split(/\.|\?|!/).length
para_count = text.split(/\n\n/).length
keywords = words.select { |word| !stopwords.include?(word) }

# make a summary
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by { |sentence| sentence.length }
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences =ideal_sentences.select { |sentence| sentence =~ /is|are/ }

# feedback
puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{total_characters_nospace} characters excluding spaces"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{para_count} paragraphs"
puts "#{sentence_count / para_count} sentecnes per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "#{keywords.length} keywords (words excluding: the, a, to, etc.)"
puts "#{ ((keywords.length.to_f / words.length.to_f) * 100).to_i} % of words are keywords"
puts "summary: \n\n " + ideal_sentences.join(". ")
puts "-- Enf od text analysis --"




