#!/usr/local/bin/ruby

lines = File.readlines("text.txt")

line_count = lines.size 
text = lines.join
total_characters = text.length
total_characters_nospace = text.gsub(/\s+/, '').length
word_count_with_split = text.split.length
sentence_count = text.split(/\.|\?|!/).length
para_count = text.split(/\n\n/).length

puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{total_characters_nospace} characters excluding spaces"
puts "#{word_count_with_split} words"
puts "#{sentence_count} sentences"
puts "#{para_count} paragraphs"