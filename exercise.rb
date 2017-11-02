class Exercise
    attr_accessor :name, :cal_per_hour 

    def initialize(name, cal_per_hour)
        @name = name
        @cal_per_hour = cal_per_hour

    end

    def caloriesBurned(time)

        time_in_hours = time/60.0
        calories_burned = time_in_hours * @cal_per_hour
       
        return calories_burned



    end

    def to_s
       "#{name} |#{cal_per_hour}"
    end



end