class OrangeTree
  def initialize
    @age = 0
	@oranges = 0
	@height = 0
	@is_alive = true
	'You have planted a new Orange tree.'
  end

  def one_year_passes
    @age += 1
	if @age == 15
	  @is_alive = false
	  puts 'The Orange tree has died.'
	end  
    if @is_alive then
	  @height += 0.5
	  @oranges = 0
	  if @age >= 3
	    @oranges = 100 + (@age - 3) * 25
	  end	
	end  
  end

  def height
    'The Orange tree is ' + @height.to_s + ' ft tall.'	
  end

  def age
    'The Orange tree is ' + @age.to_s + ' years old.'
  end

  def orange_count
    if @is_alive then
	  'The Orange tree has ' + @oranges.to_s + ' oranges.'
	else
	  'The Orange tree is dead and cannot produce oranges. '
	end  
  end

  def pick_orange
    if @is_alive
	  if @oranges > 1
	    @oranges -= 1
		'Delicious orange!'
	  else
        'There are no oranges on the tree to pick.'
      end
    else
      'A dead Orange tree cannot produce oranges.'
    end	  
  end
end

tree = OrangeTree.new
for idx in 1..20 do 
  puts tree.age
  puts tree.height
  puts tree.orange_count
  puts tree.pick_orange
  puts tree.one_year_passes
end  

