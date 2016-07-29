class ShakeShack
	def initialize
		@milkshakes = []
	end

	def add_milkshake(milkshake)
		@milkshakes << milkshake
	end

	def checkout
		total = 0
		@milkshakes.each { |milkshake|
			total += milkshake.price_of_milkshake
		}
		total
	end

end



class MilkShake
	def initialize
		@base_price = 3
		@ingredients = []
	end


	def add_ingredient(ingredient)
		@ingredients << ingredient
	end


	def price_of_milkshake
		total = @base_price

		@ingredients.each { |ingredient|
			total += ingredient.price
		}
		
		total
	end
end


class Ingredient
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end


my_milkshake = MilkShake.new
other_milkshake = MilkShake.new

banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
strawberries = Ingredient.new("strawberries", 3)
cookie_dough = Ingredient.new("Cookie Dough", 2)

my_milkshake.add_ingredient(banana)
my_milkshake.add_ingredient(chocolate_chips)
my_milkshake.add_ingredient(cookie_dough)

other_milkshake.add_ingredient(chocolate_chips)
other_milkshake.add_ingredient(strawberries)


other_milkshake.price_of_milkshake
my_milkshake.price_of_milkshake


my_shack = ShakeShack.new

my_shack.add_milkshake(my_milkshake)
my_shack.add_milkshake(other_milkshake)


puts my_shack.checkout