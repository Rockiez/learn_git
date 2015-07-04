leap = proc do |year|
	year % 4 == 0 && year % 100 != 0 || year % 400 == 0
	#必须被4整除，不被100整除，但可以被400整除。
end

p leap.call(2000)
p leap.call(2014)
p leap.call(1500)