def sort_words(str)
	str = str.split(" ")
	str.each { |word|
		word.gsub!(/\W/, "")
	}.sort { |x, y| x.capitalize <=> y.capitalize }
end

print sort_words("Have a nice day.")
print sort_words("Fools fall for foolish follies.")
print sort_words("Ruby is a fun language!")