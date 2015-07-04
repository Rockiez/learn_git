prc = Proc.new{|a, b| a + b}
p prc.call(1, 2)
p prc[3, 4]
p prc.yield(5,6)
p prc.(7, 8)
p prc === [9, 10]