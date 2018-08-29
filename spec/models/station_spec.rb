require 'rails_helper'

describe Station, type: :model do
  it 'exists' do
    station = Station.new(
      {
        "station_name": "UDR",
        "street_address": "800 Acoma St",
        "fuel_type_code": "ELEC",
        "distance": 0.31422,
        "access_days_time": "24 hours daily"
      })

      expect(station).to be_a(Station)
  end
end
