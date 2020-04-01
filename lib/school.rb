require 'pry'

class School
  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end

  def grade(num)
    @roster[num] 
  end

  def sort
    sorted_hash = {}
    @roster.each { |k,v| sorted_hash[k] = v.sort }
    sorted_hash
  end
  
  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end
	
  #def add_student(name, grade)
  #end
end
