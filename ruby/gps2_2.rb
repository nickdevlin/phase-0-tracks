# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]

	# take string of items into a hash, split from one another
	
# set default quantity
 
 	#give number of items (minimum 1)
 
  # print the list to the console [can you use one of your other methods here?]
  	#use .each method to print items and numbers
  	
# output: [what data type goes here, array or hash?]

	#output type is a hash

# Method to add an item to a list
	
# input: item name and optional quantity

	# grocery_list(:item) = quantity

# steps:
	
	#setting item as key, quantity as value

# output:

	#return key and value

# Method to remove an item from the list

# input: key to be deleted
# steps: iterate through hash until key is found, deleting when found
# output: hash without deleted key

# Method to update the quantity of an item
# input: key for value to be altered
# steps: iterate through hash until value is found, update with given quantity
# output: hash with updated value

# Method to print a list and make it look pretty
# input: none
# steps: iterate through hash until reach end of value
# output: print values individually in more English

all_items = {}

def create_list(list, empty_list)
	grocery = list.split(' ')
	grocery.each do |item|
		empty_list[item] = 1
	end
	empty_list
end

def print_list(empty_list)
	empty_list.each do |item, quantity|
		puts "As for #{item}, we have #{quantity}."
	end
end

def add_item(name, quantity, empty_list)
	empty_list[name] = quantity
	print_list(empty_list)
end

def remove_item(name, empty_list)
	empty_list.delete(name)
	print_list(empty_list)
end

def update_quantity(name, quantity, empty_list)
	empty_list[name] = quantity
	print_list(empty_list)
end
	
p create_list("apples oranges", all_items)

add_item("bananas", 4, all_items)

remove_item("oranges", all_items)

update_quantity("apples", 3, all_items)

add_item("lemonade", 2, all_items)

add_item("ice cream", 4, all_items)

remove_item("lemonade", all_items)

update_quantity("ice cream", 1, all_items)

#This assignment showed the value of detailed pseudocode. The more detailed it is, the more quickly you can fly through the actual coding process.
#Arrays are simpler and more straightforward, but they store less information. Hashes allow storage of two types of data, but require more attention to detail.
#Methods return a value.
#You can pass hashes, integers, strings, and more as arguments.
#You can pass information between methods using variables defined outside the methods.
#I'm still slightly confused by when to put which inputs in the define line of a method, but I understand a little bit more about why you do so.