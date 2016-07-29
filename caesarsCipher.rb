def solve_cipher(input, shift = 3)

	if shift < 0
		shift *= -1
	end

	input.split("").each { |letter|
		if letter == " "
			next
		elsif letter.ord < 98
			letter.tr!(letter, ((letter.ord+26) - shift).chr)
		else
			letter.tr!(letter, (letter.ord - shift).chr)
		end
	}.join("")
end

print solve_cipher("ifmmp", 1)
print solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)
print solve_cipher("p| uhdo qdph lv grqdog gxfn")
