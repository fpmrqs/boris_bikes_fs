class DockingStation
 
  def release_bike
    if self.is_there_bike?
      Bike.new
    else
      raise("No Bike Available")
    end
  end
  
  def dock_bike(bike_name)
    if self.is_there_bike?
    @bike_name = bike_name
    else
      raise("Dock station is full")
    end
  end

attr_reader :bike_name

  def is_there_bike?
    if self.bike_name != nil
      self.bike_name
    else
      false
    end
  end

end



