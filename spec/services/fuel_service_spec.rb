require 'rails_helper'

describe FuelService do
  it 'exists' do
    params = {"utf8"=>"✓", "q"=>"80203", "commit"=>"Locate", "controller"=>"search", "action"=>"index"}
    service = FuelService.new(params)

    expect(service).to be_a(FuelService)
  end
  describe 'instance methods' do
    it 'can get a list of 10 stations' do
      params = {"utf8"=>"✓", "q"=>"80203", "commit"=>"Locate", "controller"=>"search", "action"=>"index"}
      service = FuelService.new(params)

      expect(service.unsorted_stations).to be_a(Array)
      expect(service.unsorted_stations.first).to be_a(Hash)
      expect(service.unsorted_stations.first).to have_key(:station_name)
      expect(service.unsorted_stations.first).to have_key(:street_address)
      expect(service.unsorted_stations.first).to have_key(:fuel_type_code)
      expect(service.unsorted_stations.first).to have_key(:distance)
      expect(service.unsorted_stations.first).to have_key(:access_days_time)
    end
  end
end
