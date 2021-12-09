require 'docking_station'
describe DockingStation do
    station = DockingStation.new
    green_bike = Bike.new

    it {expect(DockingStation.new).to respond_to :release_bike} 
    it {expect(DockingStation.new.release_bike.working?).to be true}
    it {expect(DockingStation.new).to respond_to :dock_bike}

    
    it {expect(DockingStation.new.dock_bike(green_bike)).to eq green_bike }

    it { expect(station.is_there_bike?).to eq nil}

    it "checks if station has any bikes" do
        station.dock_bike(green_bike)
        expect(station.is_there_bike?).to eq green_bike
    end 

end
