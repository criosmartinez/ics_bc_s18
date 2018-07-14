### Copy in your shuffle method first
require 'yaml'

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

    filename = 'My_Playlist.m3u'
    File.open filename, 'w' do |f|
      shuffled_array.each {|song| f.puts song}

    end

  else
    idx = rand(0..sorted_array.length-1)
    if !shuffled_order.include?(idx)
      shuffled_order.push idx
    end
    recursive_shuffle sorted_array, shuffled_order
  end
end

### Now use it to build your playlist:
song_names = Dir['C:/dev/code/ics_bc_s18/week5/ch11/music/billboard_top_100_hits/**/*.{mp3}']
shuffle song_names
