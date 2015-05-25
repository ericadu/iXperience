# E1: Reverse
def reverse(array)
  array.each_with_index do |item, index|
    puts array[-index-1]
  end
end

# Uncomment below to Test
# reverse(["apples", "bananas", "carrots", 4])

# E2: Fizzbuzz
def fizzbuzz
  (1..100).each do |num|
    if num % 15 == 0
      puts "fizzbuzz"
    elsif num % 5 == 0
      puts "buzz"
    elsif num % 3 == 0
      puts "fizz"
    else
      puts num
    end
  end
end

# Uncomment below to Test
# fizzbuzz

# E3: Hashes and lists, oh my!
recipes = {
  "PB&J" => {
    :description => "Peanut Butter and Jelly Sandwich",
    :ingredients => ["Peanut Butter", "Jelly", "2 Pieces of Toast"],
    :steps => ["Take 2 pieces of bread", "Put PB on one piece", "Put Jelly on the other", "Smoosh the pieces of bread together"]
  },
  "Hardboiled Eggs" => {
    :description => "Easy 10 min eggs",
    :ingredients => ["Eggs", "Salt", "Water"],
    :steps => ["Boil water", "Add salt to water", "Put eggs in for 10 minutes", "Pour cold water over it"]
  }
}

# E4: Build a List
def list_builder
  puts "Welcome to list builder!"
  list = []
  while true
    puts "What can I add?"
    list << gets.strip
    puts "Added! Your list is: #{list}"
  end
end

# Uncomment below to Test
# list_builder

# E5: Extensive Listbuilder
def ext_list_builder
  puts "Welcome to list builder++!"
  list = []

  # Loop forever
  while true
    puts "What can I do for you?"

    # Transform string into a list, separate by spaces
    response = gets.strip.split(" ")

    # First, check first word.
    if response[0] == "add"
      list << response[1]
      puts "Added! Your list is: #{list}"
    elsif response[0] == "remove"
      # Deletion is valid if item exists or list is non-empty. If not valid,
      # list.delete will return nil.
      if list.delete response[1]
        puts "Removed! Your list is #{list}"
      else
        puts "Not a valid deletion!"
      end
    elsif response[0] == "quit"
      puts "Bye!"

      # To quit out of while loop here, must break.
      break
    else
      # Error catching. If program doesn't recognize, then tells user. 
      puts "Not a valid command."
    end
  end
end

# Uncomment to Test
# ext_list_builder

# E6: A List Counter

