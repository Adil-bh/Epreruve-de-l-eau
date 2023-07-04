#Fonction utilisées
def checkArguments(arguments)
	arguments.each do |arg|
		if arg.count("a-zA-Z") > 0
			return true
		end
	end
	return true if arguments.length < 2
end

def my_bubble_sort(array)
	array = array.map(&:to_i)
	array.each do
		for i in 0..array.length - 2
			if array[i] > array[i+1]
				array[i], array[i+1] = array[i+1], array[i]
			end
		end		
	end
	return array
end

#Partie 1 : Gestion d'erreur
if checkArguments(ARGV)
	puts "error"
	exit
end

#Partie 3 : Résolution
bubble_sort_array = my_bubble_sort(ARGV)

#Partie 4 : Affichage
bubble_sort_array.each do |number|
	print "#{number} "
end