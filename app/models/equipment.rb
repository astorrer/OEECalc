class Equipment < ApplicationRecord
  belongs_to :facility

  # Polymorphic Association (Can also belong to facilities.)
  has_many :expectations, as: :expectable

  validates :name, :number, presence: true
end
