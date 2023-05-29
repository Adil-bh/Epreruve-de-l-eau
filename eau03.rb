args = ARGV
n_value = ARGV[0].to_i
fibonacci_sequence = []
fibonacci_sequence[0] = 0
fibonacci_sequence[1] = 1

if args.length == 0 || args.to_s.count("a-zA-Z") > 0 || args.length > 1 || n_value < 0
	puts "-1"
else
	for num in 2..n_value
		next_fibonnaci = fibonacci_sequence[num - 1] + fibonacci_sequence[num - 2]
		fibonacci_sequence.insert(-1, next_fibonnaci)
	end

	print fibonacci_sequence[n_value]
end

