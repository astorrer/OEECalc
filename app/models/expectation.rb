class Expectation < ApplicationRecord
  belongs_to :expectationable, polymorphic: true
end
