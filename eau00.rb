=begin
	
1* On compte de 0..999 au format %.3i (ex : 012)
2* On décompose les 3 digits dans un tableau  (ex :[0, 1, 2])
3* Si les digits sont croissants on insère numbers dans combinated_numbers

Tip discord : Compter de 0 à 999. Triche ?
Question : Peut-on supprimer la dernière virgule après 789, ?
=end

combinated_numbers = []

def is_ascending?(a, b, c)
	return true if a < b && b < c
end

for num in 0..999
	numbers = "%.3i" % num  							#012
	digit = numbers.chars.map(&:to_i)					#[0, 1, 2]
	if is_ascending?(digit[0],digit[1],digit[2])	#Si digits croissant : numbers => combinated_numbers
		combinated_numbers.insert(-1, numbers)
	end
end

i = 0
combinated_numbers.each do
	print "#{combinated_numbers[i]}, "
	i = i + 1
end
