def ftoc(farenheit)
  celsius = ((farenheit - 32.0) / 9.0) * 5.0
  celsius
end

def ctof(celsius)
  farenheit = (celsius * 9.0 / 5.0) + 32.0
  farenheit
end
