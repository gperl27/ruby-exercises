
(1..100).each {|x|
	result = ""
	
	if x%3 == 0 && x%5 == 0 && result == ""
		result << "FizzBuzz"
	end

	if x % 3 == 0 && result == ""
		result << "Fizz"
	end
	
	if x % 5 == 0 && result == ""
		result << "Buzz"
	end

	if x.to_s[0] == "1"
		result << "Bang"
	end

	if result == ""
		result << x.to_s
	end

	puts result
}