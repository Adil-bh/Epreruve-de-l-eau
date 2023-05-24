=begin
	
1* Tant que first_number <= 98 faire second_number + 1
2* Si second_number = 99 => on incrémente first_number + 1 et on remet à zéro second_number
3* Si la combinaison first_number second_number est croissante ajouter dans values_array
	
Question : Comment metter les entiers sous la forme 01 au lieu de 1
=end
values_array = []
first_number = 0
second_number = 0

def isAscending?(a, b)
	return true if a < b
end

while first_number <= 98
	second_number += 1
	if second_number > 99
		first_number += 1
		second_number = 0
	elsif second_number > 99 && first_number == 98 #Pour éviter [99, 100]
		break
	end
	if isAscending?(first_number, second_number)
		combinated_numbers = "#{first_number} #{second_number}"
		values_array.insert(-1, combinated_numbers)
	end

end
i = 0
values_array.each do
	print "#{values_array[i]}, "
	i += 1
end