class SearchController < ApplicationController
  def index
    @presenter = StationPresenter.new(params)
  end
end
