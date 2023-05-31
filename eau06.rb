args = ARGV
input_string = ARGV[0].to_s.chars #On découpe le mot en caractères dans un array
output_string = []
count = 0

def is_even?(number)
	return true if number % 2 == 0
	return false if number % 2 != 0
end

def is_upper?(ascii)
	return true if ascii.between?(65,90)
	return false if ascii.between?(141,172)
end

def display_output(array_ascii)
	output = []
	array_ascii.each do |ascii|
		ascii = ascii.chr
		output.insert(-1, ascii)
	end
	return output.join
end

if args.length != 1 || args[0].to_s.count("0-9") > 0
	puts "error"
else
	input_string.each do |char| 						#On passe en code ASCII chaque caractère pour agir sur sa valeur
		letter = char.ord
			if is_even?(count) && is_upper?(letter) 	#Si le compteur est pair la lettre sera majuscule 
				output_string.insert(-1, letter)
			elsif is_even?(count) && !is_upper?(letter) #Si le compteur est pair et la lettre est min. on passe son code ASCII au code MAJ.
				letter -= 32
				output_string.insert(-1, letter)
			elsif letter == 32 							#Pour éviter les espaces
				count -= 1
				output_string.insert(-1, letter)
			else
				output_string.insert(-1, letter)
			end
		count += 1
	end
	print display_output(output_string)
end



