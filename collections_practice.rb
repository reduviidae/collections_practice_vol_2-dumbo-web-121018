# your code goes here

# select method syntax
# [1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]

# count method syntax
# array.count { |x| x%2 == 0 } #=> 3

require "pry"

def begins_with_r(array)
  # binding.pry
  new_array = array.select { |string| string[0] == "r" }
  new_array == array
end

def contain_a(array)
  array.select { |string| string.include? "a" }
end
    
def first_wa(array)
  # binding.pry
  new_array = array.select { |string| string.class == String }
  # binding.pry
  first_check = []
  first_check = new_array.select { |string| string[0] == "w" }
  # binding.pry
  second_check = first_check.select { |string| string[1] == "a" }
  second_check[0]
end

def remove_non_strings(array)
  array = array.select { |string| string.class == String }
end

# original attempt at count_elements solution
# new_array << array.uniq.map { |x| ":count=>#{array.count(x)}, :name=>" }

def count_elements(array)
  mutated = []
  
  array.each do |original|
    name = original[:name]

    obj = {}
    obj[:count] = 0
    array.each do |hash|
    # binding.pry
		# Some more code stuff here
		  obj[:count] = array.count(hash)
		  obj[:name] = name
    end
    if mutated.include?(obj)
      obj[:count] += 1
      mutated.delete(mutated[0])
    end
    mutated.push(obj)
  end
  
  return mutated
end

# stack overflow suggestions for reference
# # v1[0].values.map.with_index {|v, i| v2[i].merge(v)}
#
# # a.merge(b) { |k, x, y| x + y }

# pseudo code from Benjamin
# 1. construct a while loop so we can go through array1 and build off what we have
# 2. find the first name so we can then go to array 2 and find the extra information that we need
# 3. iterate through the value of the first name, adding each key value pair to the current hash that we have in array1
# 

def merge_data(array1, array2)
  i = 0 
  new_array = []
  object1 = {}
  object2 = {}
  while i < array1.length 
    array1[i].each do |key, value|
      keyHolder = key 
      valueHolder = value
    end
    object1 = {keyHolder => valueHolder}
    i += 1
  end
  x = 0 
  while x < array2.length
    array2[x].each do |key, value|
      keyHolder = key
      valueHolder = value
    end 
    object2 = {keyHolder => valueHolder}
    x +=1
  end
  binding.pry
  object1.merge(object2)
end

# using select on hashes
# h = { "a" => 100, "b" => 200, "c" => 300 }
# h.select {|k,v| k > "a"}  #=> {"b" => 200, "c" => 300}
# h.select {|k,v| v < 200}  #=> {"a" => 100}

def find_cool(cool)
  cool.select {|k,v| k == "cool"}
end