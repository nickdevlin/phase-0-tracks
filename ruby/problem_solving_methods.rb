#simple search

new_array = []

def search_method(new_array, search_term)
	
	if new_array.map.include? (search_term)
		puts new_array.each_index.select{ |i| new_array[i] == search_term }
	end
end

puts "How many numbers do you want in your array?"
	array_size = gets.chomp.to_i
index = 0
while index < array_size
	puts "Enter a number into your array."
	array_number = gets.chomp.to_i
	new_array << array_number
	index += 1
end

puts "What number are you looking for?"
	search_term = gets.chomp.to_i

puts search_method(new_array, search_term)

#Fibonnaci Sequence

def fib_numbers(amount)
	fib_array = []
	index = 0
	until amount > 0
		puts "Enter a number greater than 0"
		amount = gets.chomp.to_i
	end
	
	if amount == 1
		fib_array.push(0)
	else 
		fib_array.push(0)
		fib_array.push(1)
		until index == (amount - 2)
			fib_array.push(fib_array[index] + fib_array[index.next] )
			p index
			index += 1
		end
	end
p fib_array
end

puts "How many Fibonacci terms do you want to generate?"
amount = gets.chomp.to_i

fib_numbers(amount)

#bubble sort

#input an array
#compare first item in array to second, swap accordingly
#compare second item in array to third, swap accordingly
#etc. until finished with array

array = [4, 9, 25, 16, 1]

def sort_squares(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |square|
      if array[square] > array[square+1]
        array[square], array[square+1] = array[square+1], array[square]
        swapped = true
      end
    end

    break if not swapped
  end

 array
end

p sort_squares(array)
