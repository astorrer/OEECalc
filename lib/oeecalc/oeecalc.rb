require File.expand_path('../oeemath.rb', __FILE__)

class OEEcalc < OEEmath 
  
  # M M S TOTAL TOTAL
  def initialize(planned_production_time, stop_time, ideal_cycle_time, total_count, good_count)
    @planned_production_time = planned_production_time
    @stop_time = stop_time
    @ideal_cycle_time = ideal_cycle_time
    @total_count = total_count
    @good_count = good_count
  end

  def calculate_availability
    return availability(run_time(@planned_production_time, @stop_time), @planned_production_time) * 100
  end

  def calculate_performance
    return performance(net_run_time(@ideal_cycle_time, @total_count), run_time(@planned_production_time, @stop_time)) * 100
  end

  def calculate_quality
    return quality(@good_count, @total_count) * 100
  end

  def calculate_oee
    return oee(calculate_availability, calculate_performance, calculate_quality)
  end
end

#calculation = OEEcalc.new(420, 47, 1, 19271, 18848)

#puts calculation.calculate_availability.round(2)
#puts calculation.calculate_performance.round(2)
#puts calculation.calculate_quality.round(2)
#puts calculation.calculate_oee.round(2)