class Expectation < ApplicationRecord
  belongs_to :expectable, polymorphic: true  
end
