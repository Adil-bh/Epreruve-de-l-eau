arguments = ARGV
count = ARGV.length - 1

if arguments.length == 0
	puts "Error."
else
	arguments.each do
		puts arguments[count]
		count -= 1
	end
end