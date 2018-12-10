class Death < ApplicationRecord
  # Direct associations

  belongs_to :cattle

  # Indirect associations

  # Validations

validates :brinco, uniqueness: true

end
