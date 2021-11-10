require './person'
require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

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

# has-many relationship
first_rental = Rental.new("11-12-2021")
second_rental = Rental.new("10-12-2021")
alpha_book = Book.new("Game of thrones", "George Martin")
alpha_book.rentals
alpha_book.add_rental(first_rental)
alpha_book.add_rental(second_rental)
alpha_book.rentals
alpha_book.rentals.map{ |rental| rental.date}

alpha_book.rentals.count

# belongs-to relationship
first_rental.book
first_rental.book = alpha_book
first_rental.book
first_rental.book.author

alpha_book.rentals.last.date

# has-many reationship
third_rental = Rental.new("1-11-2021")
fourth_rental = Rental.new("2-11-2021")
person.rentals
person.add_rental(third_rental)
person.add_rental(fourth_rental)
person.rentals.map{ |rental| rental.date }

person.rentals.count

# belongs-to relationship
third_rental.person
third_rental.person = person
third_rental.person
third_rental.person.name

person.rentals.first.date



