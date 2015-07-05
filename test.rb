def my_collect(obj, &block)
	if block
		a = []
		obj.each do |num|
			a << block.call(num)
		end
		a
	else
		obj
	end
end

ary = my_collect([1, 2, 3, 4, 5]) do |i|
	i * 2
end

p ary