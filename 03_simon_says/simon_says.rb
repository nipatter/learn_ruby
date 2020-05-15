#write your code here
def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, repetitions=2)
  sentence = ""
  repetitions.times do
    sentence += word + " "
  end
  sentence.strip()
end

def start_of_word(word, pos=1)
  return word[0..pos-1]
end

def first_word(word)
  word = word.split(" ")
  return word[0]
end

def titleize(sentence)
  little_words = ['and', 'or', 'the', 'with', 'over']
  words = sentence.split(" ").each {|word| 
    little_words.include?(word) ? word : word.capitalize!
  }
  words[0].capitalize!
  sentence = words.join(" ")
end

