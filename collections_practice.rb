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


def merge_data(arr1, arr2)
  arr2[0].map do |name, prop_hash| #loop over arr2 with map
  # binding.pry
    new_prop_hash = {} # make a new hash to populate
    arr1.each do |new_attr_hash| #loop over arr1 within the loop of arr2
    # binding.pry
      if new_attr_hash[:first_name] == name #use conditional to check if key exists
        new_prop_hash = prop_hash.merge(new_attr_hash) #call .merge if it does
      end
    end
    new_prop_hash #return new, merged hash
  end
end

# using select on hashes
# h = { "a" => 100, "b" => 200, "c" => 300 }
# h.select {|k,v| k > "a"}  #=> {"b" => 200, "c" => 300}
# h.select {|k,v| v < 200}  #=> {"a" => 100}

# using delete_if on arrays
# a.delete_if {|x| x >= "b" } 

def find_cool(cool)
 # binding.pry
 new_array = []
  cool.map do |x|
    # binding.pry
    if x[:temperature] == "cool"
      new_array << x
    end
  end
  new_array.delete_if {|y| y == nil}
end

def organize_schools(schools)
  sorted_schools = {"Chicago" => [], "NYC" => [], "SF" => []}
  schools.map do |name|
    # binding.pry
    if name[1][:location] == "Chicago"
      sorted_schools["Chicago"] << name[0]
    elsif name[1][:location] == "NYC"
      sorted_schools["NYC"] << name[0]
    else name[1][:location] == "SF"
      sorted_schools["SF"] << name[0]
    end
  end
  sorted_schools
end