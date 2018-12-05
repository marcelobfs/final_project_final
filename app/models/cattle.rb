class Cattle < ApplicationRecord
  # Direct associations

  has_one    :death,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
