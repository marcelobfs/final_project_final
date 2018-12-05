class Cattle < ApplicationRecord
  # Direct associations

  has_many   :vaccinations,
             :dependent => :destroy

  has_many   :weightings,
             :dependent => :destroy

  has_many   :pregnancies,
             :dependent => :destroy

  has_one    :cattle_sale,
             :dependent => :destroy

  has_one    :death,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
