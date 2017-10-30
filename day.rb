require './food'
require './meal'


class Day 

	attr_accessor :day_of_week, :meals

	def initialize(day_of_week)
		@day_of_week = day_of_week
		@meals = []
	end

	def add_meal(meal)
		meals.push(meal)

	end

	# def seeMeals()
	# 	puts meals

	# end

	def dayCalorie
		number_of_cal = 0

		meals.each do |indivmeal|
			number_of_cal += indivmeal.calories

		end
		
		return number_of_cal

	end

	def dayCalorieGoal(day_calories)
		calorie_goal = 2000
		
		percentage_to_goal = day_calories/calorie_goal

		puts "Dan is #{percentage_to_goal*100} percent to his goal "



	end

	def howFatIsDanThisMonth(day_calories)
		calorie_goal = 2000
		cal_per_pound = 3500
		amount_of_fat_a_day = (day_calories - 2000)/cal_per_pound

		
		puts "If dan eats like this for 30 days he will be #{amount_of_fat_a_day*30} lbs #{firstUnder(amount_of_fat_a_day, 0)}this month"


	end
	def firstUnder(number1,number2)

		if number1> number2
			return "over"
		end
		return "under"

	end




	def to_s 	
		puts "#{name}|#{meals}| #{number_of_cal}"


	end

end