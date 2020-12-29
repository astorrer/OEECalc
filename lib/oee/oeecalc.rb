module Oee
  class Oeemath 

    # This class contains all of the funtions needed to calcuate OEE for an individual record.

    def run_time(planned_production_time, stop_time)
      return planned_production_time.to_f - stop_time.to_f
    end

    def net_run_time(ideal_cycle_time, total_count)
      return ideal_cycle_time.to_f * total_count.to_f
    end

    def availability(run_time, planned_production_time)
      return run_time.to_f / planned_production_time.to_f
    end

    def performance(net_run_time, run_time)
      return net_run_time.to_f / (run_time.to_f * 60) # Multiply to get seconds from minutes.
    end 

    def quality(good_count, total_count)
      return good_count.to_f / total_count.to_f
    end
  
    def oee(availability, performance, quality)
      return (availability.to_f * performance.to_f * quality.to_f) / 10000
    end
  end

  class Oeecalc < Oeemath 
  
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
end

#calculation = OEEcalc.new(420, 47, 1, 19271, 18848)

#puts calculation.calculate_availability.round(2)
#puts calculation.calculate_performance.round(2)
#puts calculation.calculate_quality.round(2)
#puts calculation.calculate_oee.round(2)