Cloth = Struct.new(:occasion, :type, :weather)

module ClothingCollection

	CLOTHES = [
		Cloth.new(:shortsleeve_style, :tshirt, :warm_to_medium),
		Cloth.new(:plaid_style, :flannel, :all),
		Cloth.new(:bluejeans_lounge, :pants, :all),
		Cloth.new(:fancypants_style, :pants, :all),
		Cloth.new(:shorts_style, :shorts, :warm_to_medium),
		Cloth.new(:shorts_performance, :shorts, :all),
		Cloth.new(:underwear_all, :underwear, :all),
		Cloth.new(:socks_lounge, :socks, :various),
		Cloth.new(:socks_performance, :socks, :running_weather)
	]
	
end

class Drawer

	def initialize capacity
		@capacity = capacity
		@count = 0
		@clothes_in_drawer = Array.new
		@clothes_options = ClothingCollection::CLOTHES
	end

	def add_clothes clothing_index
		if @count < @capacity
			@clothes_in_drawer.push(@clothes_options[clothing_index])
			@count += 1
		else
			puts "You have reached this drawer's capacity of #{@capacity} items"
		end
	end

	#retrieve the current time of year (month?)
	#give a recommendation of how to organize

end

class Dresser

	def initialize number_of_drawers
		@number_of_drawers = number_of_drawers
	end
end

