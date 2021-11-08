require './person.rb'
require './student.rb'
require './teacher.rb'

person_1 = Person.new(18)
person_1.can_use_services?


student = Student.new(2, "Rex")
student.can_use_services?
student.play_hooky

teacher = Teacher.new("Math", "Muna")
teacher.can_use_services?