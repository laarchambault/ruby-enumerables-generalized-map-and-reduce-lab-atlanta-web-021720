# Your Code Here
def map(source_array)
  i = 0
  new_array = []
  while i < source_array.length do
    new_array.push(yield(source_array[i]))
    i += 1
  end
  new_array
end


 def reduce(source_array, starting_value = 0)
 if starting_value != 0 
   reduce_tot = nil
 else
   reduce_tot = starting_value
 end
 
i = 0
  while i < source_array.length do
    reduce_tot = yield(reduce_tot, source_array[i])
    i += 1
  end
starting_value
end