require 'csv'
class Metric < ApplicationRecord
  belongs_to :equipment

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |metric|
        csv << metric.attributes.values
      end
    end
  end

end
