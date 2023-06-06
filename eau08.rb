args = ARGV
sequence_of_chars = ARGV[0].to_s.chars
number_count = 0

def is_Number?(ascii)
	return true if ascii.between?(48,57)
	return false if !ascii.between?(48,57)
end

def check_Numbers(count,array)
	return true if count == array.length
	return false if count != array.length
end

if args.length != 1
	puts "error"
else
	sequence_of_chars.each do |char|
		number_ascii = char.ord
		if !is_Number?(number_ascii)
			next
		elsif is_Number?(number_ascii)
			number_count += 1
		end
	end
end

puts check_Numbers(number_count,sequence_of_chars)
