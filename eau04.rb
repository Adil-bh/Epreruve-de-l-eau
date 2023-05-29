=begin	
Pourquoi est-ce que je ne peux pas utiliser dans ma méthode, une variable que j'ai déclaré en dehors ?	
=end
arguments = ARGV
number_arg = ARGV[0].to_f

def isPrime(val)
	number = val
	divider_array = []
	for divider in 1..number
	rest = number % divider
		if rest == 0
			divider_array.insert(-1, divider)
		end
	end
	return true if divider_array.length == 2
end

if number_arg == nil || arguments.length != 1 || number_arg.to_s.count("a-zA-Z") > 0 || number_arg <= 0 || number_arg == 1
	puts "-1"
else
	loop do
		number_arg = number_arg + 1
		if isPrime(number_arg)
			puts "#{number_arg.to_i}"
			break
		end
	end
end
