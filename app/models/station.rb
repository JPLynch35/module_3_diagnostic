class Station
  attr_reader :name, :address, :fuel_types, :distance, :access

  def initialize(data_set)
    @name = data_set[:station_name]
    @address = data_set[:street_address]
    @fuel_types = data_set[:fuel_type_code]
    @distance = data_set[:distance]
    @access = data_set[:access_days_time]
  end
end
