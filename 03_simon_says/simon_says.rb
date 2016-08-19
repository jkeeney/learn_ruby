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
