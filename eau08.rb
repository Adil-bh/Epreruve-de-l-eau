#Fonction utilisées
def is_Number?(ascii)
	return ascii.between?(48,57) ? true : false
end

def check_Numbers(count,array)
	return count == array.length ? true : false
end

def contains_special_character?(argument)
	regex = /[!@#$%^&*(),.?":{}|<>]/
	return argument =~ regex ? true : false
end

#Partie 1 : Gestion d'erreur
if ARGV.length != 1 
	puts "error"
	exit
end

ARGV.each do |argument|
	if contains_special_character?(argument)
		puts "error : non-allowed character"
		exit
	end
end

#Partie 2 : Parsing
sequence_of_chars = ARGV[0].to_s.chars
number_count = 0

#Partie 3 : Résolution
sequence_of_chars.each do |char|
	number_ascii = char.ord
	if !is_Number?(number_ascii)
		next
	elsif is_Number?(number_ascii)
		number_count += 1
	end
end

#Partie 4 : Affichage
puts check_Numbers(number_count,sequence_of_chars)
