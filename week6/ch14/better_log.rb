$log_level = 0

def log block_description, &block
  blanks = '   ' * $log_level
  $log_level += 1
  puts blanks + 'Beginning "' + block_description + '" ...'
  result = block.call
  $log_level -= 1
  puts blanks + '... "' + block_description + '" finished, returning: ' + result.to_s  
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