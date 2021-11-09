require './person'
require './student'
require './teacher'

 person = Person.new(18, 'Julianaifionu', false)
 person.can_use_services?

 student = Student.new(2, 'Rex')
 student.can_use_services?
 student.play_hooky

 teacher = Teacher.new('Math', 'Muna')
 teacher.can_use_services?

 person.validate_name
 person
