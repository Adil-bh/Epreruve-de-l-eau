#Fonction utilisées

#Partie 1 : Gestion d'erreur
args = ARGV
n_value = ARGV[0].to_i
if args.length == 0 || args.to_s.count("a-zA-Z") > 0 || args.length > 1 || n_value < 0
	puts "-1"
	exit
end

#Partie 2 : Parsing
fibonacci_sequence = []
fibonacci_sequence[0] = 0
fibonacci_sequence[1] = 1


#Partie 3 : Résolution
#Partie 4 : Affichage
for num in 2..n_value
	next_fibonnaci = fibonacci_sequence[num - 1] + fibonacci_sequence[num - 2]
	fibonacci_sequence.insert(-1, next_fibonnaci)
	print fibonacci_sequence[n_value]
end

