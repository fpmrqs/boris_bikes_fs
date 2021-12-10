class DockingStation
  def initialize
    @bike_names = []
  end

  def release_bike
    if self.is_there_bike?
      @bike_names.pop
    else
      raise("No Bike Available")
    end
  end
  
  def dock_bike(bike_name)
    if self.is_dock_full?
      raise("Dock station is full")
    else
      @bike_names << bike_name
    end
  end

  attr_accessor :bike_names

  def is_there_bike?
    if @bike_names.length > 0 
      true
    else
      false
    end
  end

  def is_dock_full?
    if @bike_names.length >= 20
      true
    else
      false
    end
  end

end

p



