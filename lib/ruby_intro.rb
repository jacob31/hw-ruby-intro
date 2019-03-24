# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0,:+)
end

def max_2_sum arr
  arr.max(2).inject(0,:+)
end

def sum_to_n? arr, n
  return false if arr.length < 2
  loop do 
    y = arr.shift

    break if arr.empty?

    arr.each do |x|
      return true if x + y == n
    end
    
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return /^([bcdfghjklmnpqrstvwxyz])/i =~ s ? true : false
end

def binary_multiple_of_4? s
  if s.match(/^[0|1]+$/)
    true if s.to_i(2) % 4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize isbn, price
    raise ArgumentError, 'ISBN value cannot be empty' if isbn.empty?
    raise ArgumentError, 'Price of the book cannot be $0.00 or less in value' if price <= 0.00
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
end
