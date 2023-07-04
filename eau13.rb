#Fonction utilisées
def checkArguments(arguments)
	arguments.each do |arg|
		if arg.count("a-zA-Z") > 0
			return true
		end
	end
	return true if arguments.length < 2
end

def my_select_sort(array)
	array = array.map(&:to_i)
	n = array.length
	for i in 0..n - 2
		min = i
		for j in i+1..n - 1
			if array[j] < array[min]
				min = j 
			end
		end
		if min != i 
			array[i], array[min] = array[min], array[i]
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
select_sort_array = my_select_sort(ARGV)

#Partie 4 : Affichage
select_sort_array.each do |number|
	print "#{number} "
end
