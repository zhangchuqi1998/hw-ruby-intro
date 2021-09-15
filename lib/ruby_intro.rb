# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each {|x| sum += x}
  return sum
end

def max_2_sum arr
  #case 1: the arr is empty, or there is only one element
  if arr.empty? 
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    # general case, sort and return
    arr = arr.sort
    return arr[arr.length-1] + arr[arr.length-2]
  end
    
end

def sum_to_n? arr, n
  # double pointer, O(n) space, O(nlong) time (mainly by sort, search take O(n) time)
  arr = arr.sort
  l = 0
  r = arr.length-1
  while l < r 
    if arr[l] + arr[r] < n
      l += 1
    elsif arr[l] + arr[r] > n
      r -= 1
    else
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  return 'Hello, ' + name
end

def starts_with_consonant? s
  if s.empty?
    return false
  end
  if !s[0].match?(/[[:alpha:]]/)
    return false
  end
  if s[0] == 'a' || s[0] == 'e' || s[0] == 'i' || s[0] == 'o' || s[0] == 'u' ||  s[0] == 'A' || s[0] == 'E' || s[0] == 'I' || s[0] == 'O' || s[0] == 'U' 
    return false
  else 
    return true
  end
end

def binary_multiple_of_4? s
  if s.empty?
    return false
  end
  sum = 0
  cur = 1
  i = s.length-1
  while i >= 0
    if s[i] == "1"
      sum += cur
    elsif s[i] == "0"
    else
      return false
    end
    cur *= 2
    i -= 1
  end
  if sum % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  #tried attr: but get massege  "BookInStock getters and setters should be able to change ISBN"
  attr_accessor:isbn
  attr_accessor:price
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%0.2f" % [@price]
  end
end
