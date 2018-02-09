class WelcomeController < ApplicationController
  def index
    @trains = Train.all
    @railway_stations = RailwayStation.all
    @routes = Route.all
  end
end
