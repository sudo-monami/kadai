#1
puts "初めてのruby"
#2
puts "ruby" + "はじめました"
#3
puts 3 + 3
puts 3 - 3
puts 3 * 3
puts 3 / 3
#4
data = [1,2,3,4]
puts data
#5
num__array = data
p num__array
#6
data2 = {name:"sudo",
        borned:"1997/10/15",
        blood:"B"
        } 

puts data2[:borned]        
#8
def nameplus(name)
  puts name + "ruby"
end

nameplus("takasi")
nameplus("yamada")

#9
def plus_one(number)
  puts number.next
end

plus_one(10)
plus_one(1)