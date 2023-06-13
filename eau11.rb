args = ARGV 
difference_array = []
numbers = args.map(&:to_i)

def check_arguments(arguments)
	arguments.each do |arg|
		if arg.count("a-zA-Z") > 0
			return true
		end
	end
	return true if arguments.length < 2
end

if check_arguments(args)
	puts "error"
else
	numbers.each do |number|
		for i in 0..numbers.length - 1
			result = number - numbers[i]
			if result > 0 #On garde uniquement les différences positives
				difference_array.insert(-1, result)
			end
		end
	end
	print difference_array.min
end