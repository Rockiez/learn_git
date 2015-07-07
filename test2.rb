class Point
	attr_accessor :x, :y

	def initialize(x = 0, y = 0)
		@x, @y = x, y
	end

	def inspect
		"(#{x}. #{y})"
	end

	def +(other)
		self.class.new(x + other.x, y + other.y)
	end

	def [](index)
		case index
			when 0
				x
			when 1
				y
			else
				raise ArgumentError, "out of range '#{index}'"
		end
	end

	def []=(index, val)
		case index
			when 0
				self.x = val
			when 1
				self.y = val
			else
				raise ArgumentError, "out of range '#{index}'"
		end
	end
end

point0 = Point.new(3,1)
point1 = Point.new(52,32)

p point0 + point1

p point1[0] = 1