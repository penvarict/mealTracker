require './food'
require './meal'
require './day'
require './exercise'
require './workout'

scrambled_eggs = Food.new("Scrambled Eggs", "1 egg", 100)
bacon = Food.new("Bacon", "3 slices", 100)
cereal = Food.new("Cereal", "1 oz", 135)
milk = Food.new("Milk", "1 cup", 125)
orange_juice = Food.new("Orange Juice", "1 Cup", 110)
roast_beef = Food.new("Roast Beef Sandwich", "1 sandwich", 345)
salad = Food.new("Salad", "1 cup", 11)
salad_dressing = Food.new("Salad Dressing", "1 tbsp", 145)
chicken_noodle_soup = Food.new("Chicken Noodle Soup", "1 cup", 75)
sweet_tea = Food.new("Sweet Tea","8 oz" ,100 )
broccoli = Food.new("Broccoli","1 cup",40 )
steak = Food.new("steak","5 oz", 240 )
mashed_potatoes = Food.new("Mashed Potatoes","1 cup",255)
gravy = Food.new("Gravy","1 cup", 125)
rice = Food.new("Rice", "1 cup", 230)
ice_cream = Food.new("Ice Cream", "1 Cup", 270)
soda = Food.new("Soda","12 oz",180)
chips = Food.new("Chips", "10 Chips", 100)
fruit_snacks = Food.new("Fruit Snack", "1 bag", 89)
trail_mix = Food.new("Trail Mix", "1 cup", 693)

# exercises

jogging = Exercise.new("Jogging",300)
yoga = Exercise.new("Yoga",240)
weightlifting = Exercise.new("Weightlifting", 266)

monday_workout = Workout.new("Monday")

monday_workout.addExerciseToWorkout(jogging, 30)
monday_workout.addExerciseToWorkout(yoga, 20)
monday_workout.addExerciseToWorkout(weightlifting, 45)


###

breakfast = Meal.new("Breakfast")
breakfast.add_food(scrambled_eggs, 3)
breakfast.add_food(bacon, 2) #food, number of portions
breakfast.add_food(cereal,2)
breakfast.add_food(milk, 1)
breakfast.add_food(orange_juice,1)




lunch = Meal.new("Lunch")
lunch.add_food(roast_beef, 1)
lunch.add_food(salad, 2)
lunch.add_food(salad_dressing,3)
lunch.add_food(chicken_noodle_soup, 1.5)
lunch.add_food(sweet_tea,2)


dinner = Meal.new("Dinner")
dinner.add_food(broccoli,1)
dinner.add_food(steak,1.6)
dinner.add_food(mashed_potatoes,1.5)
dinner.add_food(gravy, 0.25)
dinner.add_food(rice, 1)
dinner.add_food(ice_cream,1)

dinner.add_food(soda,1)

snacks = Meal.new("Snacks")

snacks.add_food(chips,3)
snacks.add_food(fruit_snacks, 1)
snacks.add_food(trail_mix, 0.2)

puts snacks.calories 


monday = Day.new("Monday")
monday.add_meal(breakfast)
monday.add_meal(lunch)
monday.add_meal(dinner)
monday.add_meal(snacks)

calories_in_monday= monday.dayCalorie

# puts monday.dayCalorie #4,000 calories

# puts monday.dayCalorieGoal(calories_in_monday)

# monday.howFatIsDanThisMonth(calories_in_monday)



puts monday_workout.workoutCalories()


