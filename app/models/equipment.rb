class Equipment < ApplicationRecord
  belongs_to :facility

  # Polymorphic Association (Can also belong to equipment.)
  has_many :expectations, as: :expectationable

end
