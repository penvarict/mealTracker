require './exercise'



class Workout

    attr_accessor :name, :workout, :durations

    def initialize(name)
        @name = name
        @workout = []
        @durations = []

    end

    def addExerciseToWorkout(name, time)
        @workout.push(name)
        @durations.push(time)
        
    end


    def workoutCalories()

        workout_calories = 0

        workout.each_with_index do |exercise, i| 
 
            workout_calories += exercise.caloriesBurned(durations[i])

        end

        return workout_calories


    end

    def to_s 
        "#{name} | #{workout}| #{durations}"


    end


end