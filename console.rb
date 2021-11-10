require './person'
require './student'
require './teacher'
require './classroom'

person = Person.new(18, 'Julianaifionu', false)

first_student = Student.new(22, 'first_classroom', 'Rex')
second_student = Student.new(21, 'first_classroom', 'Prince')
third_student = Student.new(23, 'first_classroom', 'Rose')

teacher = Teacher.new('Math', 'Muna')


first_classroom = Classroom.new("first_classroom")
first_classroom.students
first_classroom.add_student(first_student)
first_classroom.add_student(second_student)
first_classroom.add_student(third_student)

first_classroom.students
p first_classroom.students.map{ |student| student.name }
