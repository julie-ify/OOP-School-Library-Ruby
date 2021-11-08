require './person'

class Student < Person
  def initialize(classroom, name = 'Unknown', parent_permission: true)
    super(20, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
