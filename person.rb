class Person
  def initialize(age, name = "Unknown", parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
  end

  def id
    @id
  end

  def name
    @name
  end

  def age
    @age
  end

  def name=(value)
    @name = value
  end

  def age=(value)
    @age = value
  end

  def can_use_service?
    if is_of_age? || @parent_permission
      true
    else false
    end
  end

  private
  def is_of_age?
    if @age >= 18
      true
    else false
    end
  end

end

person_1 = Person.new(18)
# p person_1.can_use_service?