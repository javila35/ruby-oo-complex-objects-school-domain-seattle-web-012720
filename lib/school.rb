class School

    attr_accessor :roster
    def initialize(roster)
        @roster = Hash.new
    end

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = [name]
        else
            @roster[grade] << name
        end        
    end

    def grade(grade)
        @roster[grade]
    end


    def sort
        @roster.each_key do |grade|
            @roster[grade] = @roster[grade].sort
        end
    end
end