#Fonction utilisées
def check_arguments(arguments)
	arguments.each do |arg|
		if arg.count("a-zA-Z") > 0
			return true
		end
	end
	return true if arguments.length < 2
end

#Partie 1 : Gestion d'erreur
if check_arguments(ARGV)
	puts "error"
	exit
end

#Partie 2 : Parsing
difference_array = []
numbers = ARGV.map(&:to_i)

#Partie 3 : Résolution
numbers.each do |number|
	for i in 0..numbers.length - 1
		result = number - numbers[i]
		if result > 0 #On garde uniquement les différences positives
			difference_array.insert(-1, result)
		end
	end
end

#Partie 4 : Affichage
print difference_array.min