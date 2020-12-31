class DashboardController < ApplicationController

  def dashboard
    @facilites_count = Facility.count
  end
  
end
