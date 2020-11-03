# code here!
class School
    def initialize(name)
        @school_name = name
        @roster = {}
    end
    attr_reader :roster
    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << name
        else
            @roster[grade] << name
        end
    end
    def grade(number)
        @roster[number]
    end
    def sort
        @roster.each do |grade, student|
            student.sort!
        end
    end
end