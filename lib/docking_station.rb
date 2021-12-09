class DockingStation
 
  def release_bike
    Bike.new
  end
  
  def dock_bike(bike_name)
    @bike_name = bike_name
  end

attr_reader :bike_name

  def is_there_bike?
    if self.bike_name != ""
      self.bike_name
    else
      nil
    end
  end

end



