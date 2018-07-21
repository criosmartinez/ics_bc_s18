def log block_description, &block
  puts 'Beginning "' + block_description + '" ...'
  result = block.call
  puts '... "' + block_description + '" finished, returning: ' + result.to_s  
end

log 'Outer block' do
  log 'Middle block' do
    log 'Inner block 1' do
      5 * 3
	end  
	log 'Inner block 2' do
	  'This is fun!'
	end
	['a','b']
  end
  'some result'
end