#Text Analyzer

#Get file and put each line in an array
lines= File.readlines(ARGV[0])

#Count the lines
line_count = lines.size
puts "There are #{line_count} lines in this text."

#Join all the lines together into one string
text = lines.join

#stop_words is a list of some words that have no meaning on their own
stop_words = %w{the that this they then a many some each in
        over around under beside between near of to and
        or but either neither nor hence consequently therefore
        nevertheless while when where although unless if had will
        other there any was did too to as on an at into}

#ideal_words is a list of words that may indicate the sentence is an ideal_sentence
ideal_words = ["is", "are", "was", "will", "will be", "will have", "will have been", "has", "has been", "had", "had been",
        "may", "may be", "might", "might be"]

#Count the characters and characters excluding spaces
total_characters = text.length
total_characters_nospaces = text.gsub( " ", '').length
puts "There are #{total_characters} characters in the text."
puts "Excluding spaces, there are #{total_characters_nospaces} characters."

#Count the words and sentences and paragraphs
word_count = text.split.length
sentence_count = text.split(/\.|\?|!/).length
paragraph_count = text.split(/\n\n/).length
puts "There are #{word_count} words."
puts "There are #{sentence_count} sentences."
puts "There are #{paragraph_count} paragraphs."
puts "Average #{word_count/sentence_count} words per sentence."
puts "Average #{sentence_count/paragraph_count} sentences per paragraph."

#Make a list of good words(words that are not stop words)
#Count the good words
#Calculate the percentage of good words against all words.
good_words = text.split.select {|word| !stop_words.include?(word)}
good_words_percentage = ((good_words.length.to_f/word_count.to_f) * 100).to_i
puts "There are #{good_words.length} meaningful words."
puts "This is #{good_words_percentage}% of all words."

# List all the sentences and sort them by length.
sentences_sorted = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/).sort_by { |sentence| sentence.length  }



#Divide the length of the sorted sentences by 3 to get a number for what one third of all sentences are
one_third = sentences_sorted.length / 3

# Take the middle third slice of sentences.
ideal_sentences = sentences_sorted.slice(one_third, one_third+1)

# Delete any sentence that doesn't include one of the ideal words
ideal_sentences.delete_if { |sentence| !ideal_words.any? { |word| sentence.include?(word)  }  }

# Print out the summary of the text using the ideal_sentences

puts "Summary: \n\n " + ideal_sentences.join(". ")
puts "--End of analysis"














