# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each{ |num| total += num }
  return total
end

def max_2_sum arr
  total = 0
  
  # check if the array is empty
  if arr.empty?
    return 0
    
  # return the first element if it's the only one
  else if arr.count == 1
    total = arr.first
    
  # sum the two maxes
  else
    
    # assume first two elements are largest
    val1 = arr[0]
    val2 = arr[1]
    index1 = 0
    index2 = 1
    count = 0
    
    # do a check for the first max
    for num in arr do
      if num > val1 and count != index2
        val1 = num
        index1 = count
      end
      count += 1
    end
    count = 0
    
    # check for the second max
    for num in arr do
      
      # make sure it isn't the same item as the first max
      if num > val2 and count != index1
        val2 = num
        index2 = count
      end
      count += 1
    end
    total = val1 + val2
  end
  
  return total
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
