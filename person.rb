# rubocop: disable Style/OptionalBooleanParameter

require './corrector'

class Person
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age, name = 'Unknown', parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rentals = []
  end

  def can_use_services?
    # rename is_of_age to of_age due to rubocop offenses
    if of_age? || @parent_permission
      true
    else
      false
    end
  end

  def validate_name
    validate = @corrector
    @name = validate.correct_name(@name)
  end

  def add_rental(rental)
    @rentals.push(rental)
  end

  private

  def of_age?
    @age >= 18
  end
end

# rubocop: enable Style/OptionalBooleanParameter
