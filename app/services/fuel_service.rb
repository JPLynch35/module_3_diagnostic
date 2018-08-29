class FuelService
  def initialize(params)
    @params = params
  end

  def unsorted_stations
    conn = Faraday.new(url: "https://developer.nrel.gov")
    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['TRANSPORT_KEY']}&location=#{@params['q']}&fuel_type=ELEC,LPG&limit=10&radius=6")
    unsorted_stations = JSON.parse(response.body, symbolize_names: true)
    unsorted_stations[:fuel_stations]
  end
end
