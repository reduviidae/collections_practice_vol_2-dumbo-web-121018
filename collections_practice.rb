# your code goes here

# [1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]

# ary.count { |x| x%2 == 0 } #=> 3

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

def count_elements(array)
  array.uniq.map { |x| ":count=>#{array.count(x)}, #{x}" }
end