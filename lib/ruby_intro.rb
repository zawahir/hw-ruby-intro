# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0){|sum, el| sum + el}
end

def max_2_sum arr
	if(arr.empty?)
	return 0
    else
	arr.max(2).reduce(:+)
	end
end

def sum_to_n? arr, n
	if(arr.empty?)
	return false
	else
	(arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
	end
end


# Part 2

def hello(name)
   "Hello, " + name
end

def starts_with_consonant? s
  !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end 

def binary_multiple_of_4? s
	if (s) == "0"
    return true
	end
	if /^[01]*(00)$/.match(s) #|| /^0$/.match(s)
		return true
	else
		return false
	
	
	end
end
# Part 3

class BookInStock
	
	def initialize(isbn,price)
		
		if(isbn=="" || price<=0)
		raise ArgumentError.new("Incorrect isbn or price")
		end
		@isbn = isbn
		@price = price
	end
	attr_accessor :isbn, :price

	def getter
	@isbn
	@price
	end
	
	def price_as_string
	@price= '$' + '%.2f' % @price
	@price
	end
end
