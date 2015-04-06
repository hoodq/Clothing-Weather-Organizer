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

	def time_of_year
		month = Time.new.strftime("%B")
		if month == "December" || month == "January" || month == "February" || month == "March"  
			puts "It's Winter. Get your warm clothes in your main drawers"
		elsif month == "April" || month == "May" || month == "June" || month == "July" || month == "August"
			puts "It's Summer. Get your thin linins in your main drawers"
		else
			puts "It isn't Winter or Summer so weather can vary with slight breezes and warm days"
		end
	end
	
	def recommend
		time_of_year
		#get the month and then sort in your clothes from the array value of a hash categorizing all clothing
	end
	#give a recommendation of how to organize

end

class Dresser

	def initialize number_of_drawers
		@number_of_drawers = number_of_drawers
	end
end
