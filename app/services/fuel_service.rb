class FuelService
  def initialize(params)
    @params = params
  end

  def unsorted_stations
    unsorted_stations = JSON.parse(response.body, symbolize_names: true)
    unsorted_stations[:fuel_stations]
  end

  private

    def conn
      Faraday.new(url: "https://developer.nrel.gov")
    end

    def response
      conn.get("/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['TRANSPORT_KEY']}&location=#{@params['q']}&fuel_type=ELEC,LPG&limit=10&radius=6")
    end
end
