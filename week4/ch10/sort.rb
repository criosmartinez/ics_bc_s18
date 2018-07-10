def sort(some_array) # This "wraps" recursive_sort.
  recursive_sort some_array, []
end

def recursive_sort(unsorted_array, sorted_array)
  # Your fabulous code goes here.
  if unsorted_array.length == 0
    puts sorted_array
  else
    for idx in 0...unsorted_array.length
      if unsorted_array[0] > unsorted_array[idx]
        temp = unsorted_array[0]
        unsorted_array[0] = unsorted_array[idx]
        unsorted_array[idx] = temp
      end
    end
    sorted_array.push unsorted_array.shift
    recursive_sort unsorted_array, sorted_array
  end
end

sort ['Spider-Man', 'Iron-Man', 'Captain America', 'Black Panther', 'Star-Lord']
