require './person'

class Teacher < Person
  def initialize(specialization, name = 'Unknown')
    super(10, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
