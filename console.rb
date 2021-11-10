require './person'
require './student'
require './teacher'
require './classroom'

person = Person.new(18, 'Julianaifionu', false)

first_student = Student.new(22, 'first_classroom', 'Rex')
second_student = Student.new(21, 'first_classroom', 'Prince')
third_student = Student.new(23, 'second_classroom', 'Rose')

teacher = Teacher.new('Math', 'Muna')

# has-many relationship
first_classroom = Classroom.new("first_classroom")
second_classroom = Classroom.new("second_classroom")
first_classroom.students
second_classroom.students
first_classroom.add_student(first_student)
first_classroom.add_student(second_student)
second_classroom.add_student(third_student)

first_classroom.students
second_classroom.students
first_classroom.students.map{ |student| student.name }
first_classroom.students.last.classroom

# belongs-to relationship
first_student.classroom
first_student.classroom = first_classroom
second_student.classroom = first_classroom
third_student.classroom = second_classroom
first_student.classroom
first_student.classroom.label
third_student.classroom.label

