fizz = proc{|n| n % 3 == 0}
buzz = proc{|n| n % 5 == 0}
fizzbuzz = proc{|n| n % 3 == 0 && n % 5 == 0}

(1..100).each do |i|
	case i
		when fizzbuzz then puts "fizzbuzz"
		when fizz then puts "fizz"
		when buzz then puts "buzz"
		else puts i
	end
end
