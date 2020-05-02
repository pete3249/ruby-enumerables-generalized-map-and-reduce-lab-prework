def map(source_array)
  n = []
  source_array.each do |i|
    n.push yield i
  end
  return n
end 

def reduce(source_array, starting_value = source_array[0])
  n = starting_value
  i = 0
  if source_array[0] == starting_value
    i = 1
  end
  while i < source_array.length
    n = yield(n, source_array[i])
    i+=1
  end
  return n
end

