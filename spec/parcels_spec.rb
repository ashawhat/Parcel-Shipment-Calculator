require 'rspec'
require 'parcels.rb'

describe Parcel do
  it 'creates an instance of a class "Parcel"' do
  test_parcel = Parcel.new(7, 2, 2, 2)
  test_parcel.should be_an_instance_of Parcel
end
  it "creates an instance of a parcel's dimensions" do
    test_parcel = Parcel.new(7, 2, 2, 2)
    test_parcel.volume.should eq 8
  end
  it "defines cost_to_ship by multiplying volume and weight" do
    test_parcel = Parcel.new(7, 2, 2, 2)
    test_parcel.cost_to_ship.should eq 25.0
  end
end


