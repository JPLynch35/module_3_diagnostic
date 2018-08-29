class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "https://developer.nrel.gov")
    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?api_key=ENV['TRANSPORT_KEY']=params[:q]")
    @stations = JSON.parse(response.body)
  end
end
