require 'docking_station'
describe DockingStation do
    station = DockingStation.new
    green_bike = Bike.new

    it {expect(DockingStation.new).to respond_to :release_bike} 

    it "check if bike is working" do
        subject.dock_bike(green_bike)
        expect(subject.release_bike.working?).to be true
    end

    it {expect(DockingStation.new).to respond_to :dock_bike}

    it {expect(DockingStation.new.dock_bike(green_bike)).to eq green_bike }

    it "return false if there is no bike in station" do
        station = DockingStation.new
        expect(station.is_there_bike?).to eq false
    end

    it "checks if station has any bikes" do
        station.dock_bike(green_bike)
        expect(station.is_there_bike?).to eq green_bike
    end 

    it "return error if release_bike called when no bikes available" do
        station = DockingStation.new
        expect{station.release_bike}.to raise_error("No Bike Available")
    end

# As a maintainer of the system,
# So that I can control the distribution of bikes,
# I'd like docking stations not to accept more bikes than their capacity.

    it "return error if dock_bike called when dock is full" do
        subject.dock_bike(green_bike)
        expect{subject.dock_bike(green_bike)}.to raise_error("Dock station is full")
    end

    it 'can only hold 20 bikes' do
        20.times { subject.dock_bike(green_bike) }
        expect { subject.dock_bike(green_bike).to raise_error("Docking Station is Full") }
    end

    

end
