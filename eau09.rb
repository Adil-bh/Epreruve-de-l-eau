#Fonction utilisées
def check_arguments_error(arguments)
	return true if arguments.length != 2 || arguments[0].to_s.count("a-zA-Z") > 0 || arguments[1].to_s.count("a-zA-Z") > 0
end

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

#Partie 1 : Gestion d'erreur
if check_arguments_error(ARGV)
	puts "error"
	exit
end

#Partie 2 : Parsing
min = nil
max = nil
array_min_max = []

#Partie 3 : Résolution
array_min_max = check_min_max(ARGV[0],ARGV[1])
min = array_min_max[0].to_i
max = array_min_max[1].to_i

#Partie 4 : Affichage
for num in 0..max
	if num >= min && num < max
		print "#{num} "
	elsif num >= max
		break
	end
end
