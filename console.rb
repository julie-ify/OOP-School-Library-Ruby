require './person'
require './student'
require './teacher'

person = Person.new(18, 'Ebere', false)
p person.can_use_services?

student = Student.new(2, 'Rex')
p student.can_use_services?
p student.play_hooky

teacher = Teacher.new('Math', 'Muna')
p teacher.can_use_services?
