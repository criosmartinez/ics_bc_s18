def shuffle some_array
  recursive_shuffle some_array, []
end

def recursive_shuffle sorted_array, shuffled_order
  if shuffled_order.length == sorted_array.length
    shuffled_array = []
    for idx in 0...shuffled_order.length
    shuffled_array.push sorted_array[shuffled_order[idx]]
    end
    puts shuffled_array
  else
    idx = rand(0..sorted_array.length-1)
    if !shuffled_order.include?(idx)
      shuffled_order.push idx
    end
    recursive_shuffle sorted_array, shuffled_order
  end
end

shuffle ['Carolina', 'Guillermo', 'Willy', 'Ana', 'Silvia']
