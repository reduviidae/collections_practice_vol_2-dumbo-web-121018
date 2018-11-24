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
		  obj[:name] = name
    end
    if mutated.empty?
      mutated.push(obj)
    else 
      obj[:count] = obj[:count] + 1
      mutated.push(obj)
    end
  end
  
  return mutated
end

def merge_data(keys, data)
  
end

# using select on hashes
# h = { "a" => 100, "b" => 200, "c" => 300 }
# h.select {|k,v| k > "a"}  #=> {"b" => 200, "c" => 300}
# h.select {|k,v| v < 200}  #=> {"a" => 100}

def find_cool(cool)
  cool.select {|k,v| k == "cool"}
  new_array
end

def organize_schools(schools)
end