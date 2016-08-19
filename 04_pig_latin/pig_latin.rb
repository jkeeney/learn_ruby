#write your code here
def pig_latin_word word
  vowels = ['a', 'e', 'i', 'o', 'u']
  if word[0, 2] == 'qu'
    firstletters = word[0,2]
    word = word[2, word.length-1] + firstletters + "ay"
  elsif word[0,3] == 'squ'
    firstletters = word[0,3]
    word = word[3, word.length-1] + firstletters + "ay"
  elsif vowels.include?(word[0])
    word += "ay"
  elsif vowels.include?(word[1])
    firstletter = word[0]
    word = word[1, word.length-1] + firstletter + "ay"
  elsif vowels.include?(word[2])
    firstletters = word[0,2]
    word = word[2, word.length-1] + firstletters + "ay"
  else
    firstletters = word[0,3]
    word = word[3, word.length-1] + firstletters + "ay"
  end
  word
end

def translate phrase
  words = phrase.split(' ')
  pig_latin_phrase = []
  words.each do |word|
    pig_latin_phrase.push pig_latin_word(word)
  end
  pig_latin_phrase.join(' ')
end
