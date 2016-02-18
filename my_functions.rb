# Homework Day 3 - library of array and hash functions
# 
# 
# Returns the addition of the length of two arrays
def add_array_lengths(array1,array2)
  return array1.length+array2.length
end

# Returns the sum of all values in an array
def sum_array(array)
sum = 0
  for i in 0..array.length-1
     sum = sum+ array[i]
  end
  return sum
end

#Returns true is passed string is in passed array, false if not
def is_value_in_array(string,array)
  found = false
  array_size = array.length
  array_index = 0

  while (found == false && array_index<array_size)
    if array[array_index]==string
      found = true
    end
    array_index =array_index+1    
  end
  return found
end

#Returns the first key from a hash
def first_key_from_hash(hash)
  keys=hash.keys
  return keys[0]
end

#Returns capital cities from a hash of countries as an array
def give_me_capital_cities(countries_hash)
  capitals=Array.new   #note: could have done captials = []
  
  countries_hash.each {|key, value|
    capitals << countries_hash[key][:capital]
    }

  return capitals

end

