require './person.rb'

class Student < Person
  def initialize(classroom, name = "Unknown")
    super(18, name)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

student = Student.new(2, "Rex")
p student
p student.play_hooky