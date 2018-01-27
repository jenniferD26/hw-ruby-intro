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
end

def sum_to_n? arr, n
  if arr.count >= 2
    
    # start at the first element and check each next value
    for i in 0..arr.count - 2 do
      
      # compare each element to the current element
      for j in 1..arr.count - 1 do
        if(arr[i] + arr[j] == n and i != j)
          return true
        end
      end
    end
  end
  
  # false if array is empty, has 1 item, or none summed to n
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s =~ /^[^aeiouAEIOU0-9#]/
    return true
  end
  return false
end

def binary_multiple_of_4? s
  if s =~ /^(1|0)*(100|0)$/
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
