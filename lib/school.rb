require 'pry'

class School
  def initialize(name)
    @name = name
        
  end

  def roster
    {}
	end
	
  def add_student(name, grade)
    if roster.has_value?(name)
      roster[grade] << name
    else
      roster[grade] = []
    end
  end
end

school = School.new("Bayside High School")
school.add_student("AC Slater", 9)
p school.roster