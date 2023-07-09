#Fonction utilisées
def containsWord?(full_word, word)
  i = 0
  letter_count = 0

  until letter_count == word.length || i >= full_word.length
    if full_word[i] == word[letter_count]
      letter_count += 1
    end
    i += 1
  end

  return letter_count == word.length
end

def checkArguments(arguments)
	return true if arguments.length != 2 || arguments[0].count("0-9") > 0 || arguments[1].count("0-9") > 0
end

#Partie 1 : Gestion d'erreur
#Partie 2 : Parsing
arguments = ARGV
full_word = arguments[0]
word = arguments[1]

if checkArguments(arguments)
	puts "error"
	exit
end
#Partie 3 : Résolution
#Partie 4 : Affichage
puts containsWord?(full_word, word)
