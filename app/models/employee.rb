class Employee < ApplicationRecord
  belongs_to :dog

  def to_s
    self.first_name + " " + self.last_name
  end

  # def impostor_alias?
  #   Employee.all.any? do |employee|
  #     self.alias == employee.alias
  #   end
  # end

  # def impostor_title?
  #   Employee.all.any? do |employee|
  #     self.title == employee.title
  #   end
  # end

  # def validator
  #   if impostor_alias? && impostor_title?
  #     true
  #   else
  #     "Bears, Beets, BATTLESTAR GALACTICA! I see through your clever ruse JIM!"
  #   end
  # end

end
