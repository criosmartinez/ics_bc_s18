def profile block_description, &block
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
end

profile 'test' do
  number = 0
  50_000.times do
    number = number + 1
  end
  puts number
end
