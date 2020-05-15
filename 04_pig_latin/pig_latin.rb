#write your code here
require 'pry'

# the current code crashes because it can't handle translating 'my'.
# maybe it would be good to have a function "sort" that handles the
#   if statements, and then different functions of types of pig_latin()?
#   or just do an elif for my. but then what about the capitals?

def pig_latin(word)
  # Encrypts words into pig latin
  # if/else: catches the "qu" phoneme to treat it as a group
  # until: builds the word section to be shifted to the end
  i = 0
  shift = ''
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  if word.include?('qu') == true
    until "u".include? (word[i]) do
      shift += word[i]
      i += 1
    end
    shift += word[i]
  else   
    until vowels.include? (word[i]) do  
      shift += word[i]
      i += 1
    end
  end
  word.sub(shift, '') + shift.downcase + 'ay'
end


def translate(sentence)
  # breaks sentences down into words
  # feeds those words into pig_latin()
  # joins them back together at the end.
  split_sentence = sentence.split(" ").map {|thing|
    pig_latin(thing)
  }
  split_sentence.join(" ")
end

puts translate('my yik yak')

# TODO: handle 'my' correctly my -> ymay
# TODO: capitalized words are still capitalized (but with a different initial capital letter, of course)
# TODO: retain the punctuation from the original phrase

puts "translates words beginning with vowels: #{"appleay" == translate('apple')}"
puts "translates a word beginning with a consonant: #{"ananabay" == translate('banana')}"
puts "translates a word beginning with two consonants: #{"errychay" == translate('cherry')}"
puts "translates a word beginning with three consonants: #{"eethray" == translate('three')}"
puts "translates two words: #{"eatay iepay" == translate('eat pie')}"
puts "counts 'sch' as a single phoneme: #{"oolschay" == translate('school')}"
puts "counts 'qu' as a single phoneme: #{"ietquay" == translate('quiet')}"
puts "counts 'qu' as a consonant even when it's preceded by a consonant: #{"aresquay" == translate('square')}"
puts "translates many words: #{"ethay ickquay ownbray oxfay" == translate('the quick brown fox')}"
puts "handles words where 'y' is the only 'vowel': #{"ymay yikay yakay" == translate('my yik yak')}"
puts "capitalized words are still capitalized: #{"Ymay amenay isay Igelnay" == translate('My name is Nigel')}"
puts "retain the punctuation from the original phrase: #{"Iay ovelay uoyay Arahsay" == translate('I love you, Sarah!')}"