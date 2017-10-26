class Meal

	attr_accessor :food, :food_name

	#food is list of foods in meal

	def initialize(meal_name)
		@meal_name = meal_name
		@food = []
		@portion_sizes = []

	end

	def add_food(new_food, portion_size)

		food.push(new_food)
		@portion_sizes.push(portion_size)

	end

	def calories
		total_calories_in_meal = 0
		food.each_with_index do |food_item,i|
			total_calories_in_meal +=food_item.total_calories(@portion_sizes[i]) #total calories is the portions * calories function

		end

		total_calories_in_meal

	end



	def to_s
		
		str = food_name 

		food.each_with_index do |food_item, i| #food in meal
			str += food_item.to_s + "| #{@portion_sizes[i]}\n"


		end

		return str

	end



end