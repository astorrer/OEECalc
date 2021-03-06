class Facility < ApplicationRecord

  # Polymorphic Association (Can also belong to equipment.)
  has_many :expectations, as: :expectable

  # Search using SQL Like. (A very simple search implementation.)
  def self.search(search)
    if search
      search_object = Facility.where("name ILIKE ?", "%#{search}%") # Let SQL perform the search with speed.
      if search_object
        self.where(id: search_object)
      else
        @facilites = Facility.all
      end
    else
      @facilities = Facility.all
    end
  end
  
  validates :name, presence: true
end
