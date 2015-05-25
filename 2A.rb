# E1: More Surveying
puts "Hello!"
puts "How old are you?"
age = gets
puts "How old is your mom?"
mom_age = gets
puts "How old is your dad?"
dad_age = gets
puts "How old is your brother?"
bro_age = gets
puts "Thanks for answering my creepy questions! The average age of your family is #{(age + mom_age + dad_age + bro_age)/4} years old!"

# Ultra efficient
puts "Hello!"
family = ["are you", "is your mom", "is your dad", "is your brother"]
family = family.map do |member|
  puts "How old #{member}?"
  gets.to_i
end

puts "Thanks for answering my creepy questions! The average age of your family is #{(family.reduce :+)/4} years old!"

# E2: 