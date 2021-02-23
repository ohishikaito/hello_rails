class Employer < ApplicationRecord
  has_many :messages, as: :messageable

  def sender_name
    'Employer_sender_name(ex:yamada)'
  end
end
