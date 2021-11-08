require './person.rb'

class Student < Person
  def initialize(classroom, name = "Unknown")
    super(20, name)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
