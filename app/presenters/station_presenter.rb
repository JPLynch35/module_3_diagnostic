class StationPresenter
  def initialize(params)
    @service = FuelService.new(params)
  end

  def all_stations
    @service.unsorted_stations.map do |fuel_station|
      Station.new(fuel_station)
    end
  end
end
