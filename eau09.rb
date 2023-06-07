args = ARGV
min = nil
max = nil
array_min_max = []

def check_min_max(argument1,argument2)
	if argument1 > argument2
		max = argument1
		min = argument2
		return min, max
	elsif argument1 < argument2
		max = argument2
		min = argument1
		return min, max
	end
end

def check_arguments_error(arguments)
	return true if arguments.length != 2 || arguments[0].to_s.count("a-zA-Z") > 0 || arguments[1].to_s.count("a-zA-Z") > 0
end

if check_arguments_error(args)
	puts "error"
else
	array_min_max = check_min_max(args[0],args[1])
	min = array_min_max[0].to_i
	max = array_min_max[1].to_i

	for num in 0..max
		if num >= min && num < max
			print "#{num} "
		elsif num >= max
			break
		end
	end
end
