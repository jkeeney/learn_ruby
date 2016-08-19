def add num1, num2
  num1 + num2
end

def subtract num1, num2
  num1 - num2
end

def sum arraySum
  sumOfArray = 0
  arraySum.each do |num|
    sumOfArray += num
  end
  sumOfArray
end

def multiply num1, *nums
  product = num1
  nums.each do |num|
    product = product * num
  end
  product
end

def power num, exponent
  result = num
  (exponent - 1).times do
    result = result * num
  end
  result
end

def factorial num
  if num == 0 or num == 1
    result = 1
  else
    result = num
    count = num - 1
    while count > 0
      result = result * count
      count -= 1
    end
  end
  result
end
