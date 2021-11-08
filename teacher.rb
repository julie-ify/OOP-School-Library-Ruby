# rubocop: disable Style/OptionalBooleanParameter

require './person'

class Teacher < Person
  def initialize(specialization, name = 'Unknown', parent_permission = true)
    super(10, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

# rubocop: enable Style/OptionalBooleanParameter
