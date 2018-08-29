class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "https://developer.nrel.gov")
    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['TRANSPORT_KEY']}&location=params[:q]&fuel_type=ELEC,LPG&limit=10&radius=6")
    unsorted_stations = JSON.parse(response.body)
  end
end
