def echo stringToEcho
  stringToEcho
end

def shout stringToShout
  stringToShout.upcase
end

def repeat(stringToEcho, numberOfTimes = 2)
  repeatedString = stringToEcho
  (numberOfTimes - 1).times do
    repeatedString = repeatedString + ' ' + stringToEcho
  end
  repeatedString
end

def start_of_word stringToEcho, letters
  returnString = stringToEcho[0]
  count = 1
  (letters - 1).times do
    returnString = returnString + stringToEcho[count]
    count += 1
  end
  returnString
end

def first_word stringToEcho
  stringToEcho.split(' ').first
end

def titleize stringToEcho
  words = stringToEcho.split(' ')
  capitalwords=[]
  littlewords = ['a', 'the', 'and', 'over']
  words.each do |word|
    if littlewords.include?(word)
      if capitalwords.length == 0
        capitalwords.push word.capitalize
      else
        capitalwords.push word
      end
    else
      capitalwords.push word.capitalize
    end
  end
  capitalwords.join(' ')
end
