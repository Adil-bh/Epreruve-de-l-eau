#Partie 1 : Gestion d'erreur
if ARGV.length == 0
	puts "Error."
	exit
end

#Partie 2 : Parsing
arguments = ARGV
count = ARGV.length - 1


#Partie 3 : Résolution
#Partie 4 : Affichage
arguments.each do
	puts arguments[count]
	count -= 1
end