# Your Code Here
require 'pry'

def map(source_array)
  i = 0
  new_array = []
  while i < source_array.length do
    new_array.push(yield(source_array[i]))
    i += 1
  end
  new_array
end


 def reduce(source_array, starting_value = nil)
   if starting_value
     reduce_tot = starting_value
   else
     reduce_tot = starting_value && source_array[0]
 
i = 0
  while i < source_array.length do
    reduce_tot = yield(reduce_tot, source_array[i])
    binding.pry
    i += 1
  end
reduce_tot
end