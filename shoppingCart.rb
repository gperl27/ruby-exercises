class ShoppingCart
	def initialize
		@items = []
	end

	def add_item(item)
		@items << item
	end

	def checkout
		total = 0

		@items.each {|item|
			total += item.price
		}

		if @items.count > 5
			puts "You received a 10 percent discount for purchasing 5 or more items!"
			total - (total*0.09)
		end

		puts "Your total comes to $#{total}. Cash or credit?"
	end
end

class Item
	def initialize(name, price)
		@name = name
		@price = price
	end

	def price
		@price
	end
end

class Houseware < Item
	def price
		if @price > 100
			discount = @price*0.095
			@price -= discount
		end
	end
end

class Fruit < Item
	def price
		if true
			discount = @price*0.09
			@price -= discount
		end
	end
end

my_cart = ShoppingCart.new

banana = Fruit.new("Banana", 10)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum", 150)
anchovies = Item.new("Anchovies", 2)

my_cart.add_item(banana)
my_cart.add_item(oj)
my_cart.add_item(rice)
my_cart.add_item(rice)
my_cart.add_item(rice)
my_cart.add_item(vacuum_cleaner)
my_cart.add_item(anchovies)

my_cart.checkout
