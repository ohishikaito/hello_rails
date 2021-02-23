class Employee < ApplicationRecord
  has_many :messages, as: :messageable

  def sender_name
    'Employee_sender_name(ex:tanaka)'
  end
end
