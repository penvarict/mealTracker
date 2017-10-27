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

	def dayCalorie
		number_of_cal = 0

		meals.each do |indivmeal|
			number_of_cal += indivmeal.calories

		end
		
		return number_of_cal

	end




	def to_s 	



	end

end