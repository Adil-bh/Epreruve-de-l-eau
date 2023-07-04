=begin	
Pourquoi est-ce que je ne peux pas utiliser dans ma méthode, une variable que j'ai déclaré en dehors ?	
=end

#Fonction utilisées
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

#Partie 1 : Gestion d'erreur
#Partie 2 : Parsing
arguments = ARGV
number_arg = ARGV[0].to_f
if number_arg == nil || arguments.length != 1 || number_arg.to_s.count("a-zA-Z") > 0 || number_arg <= 0
	puts "-1"
	exit
end

#Partie 3 : Résolution
#Partie 4 : Affichage
loop do
	number_arg = number_arg + 1
	if isPrime(number_arg)
		puts "#{number_arg.to_i}"
		break
	end
end
