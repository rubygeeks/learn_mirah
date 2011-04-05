
name = 'senthil'
#puts name.upcase
puts name.toUpperCase
puts name.toLowerCase

def upcase(word:string)
upper =word.toUpperCase
lower= word.toLowerCase

puts upper.substring(0,1) + lower.substring(1,lower.length)

end

upcase(name)