require 'rails_helper'

describe StationPresenter do
  it 'exists' do
    params = {"utf8"=>"✓", "q"=>"80203", "commit"=>"Locate", "controller"=>"search", "action"=>"index"}
    station_presenter = StationPresenter.new(params)

    expect(station_presenter).to be_a(StationPresenter)
  end
  describe 'instance methods' do
    it 'creates Station objects' do
    params = {"utf8"=>"✓", "q"=>"80203", "commit"=>"Locate", "controller"=>"search", "action"=>"index"}
      station_presenter = StationPresenter.new(params)

      expect(station_presenter.stations.first).to be_a(Station)
    end
  end
end
