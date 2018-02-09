class RoutesController < ApplicationController
  before_action :set_route, only: [:show, :edit, :update, :destroy]

  def index
    @routes = Route.all
  end

  def show
    @route = Route.find(params[:id])
    @trains_on_route = Train.where(route_id: params[:id])
    @stations = RailwayStationsRoute.where(route_id: params[:id])
  end

  def new
    @route = Route.new
  end

  def edit
    @route = Route.find(params[:id])
    puts @route
  end

  def create
    @route = Route.new(route_params)

    if @route.save
      redirect_to @route
    else
      render :new
    end
  end

  def update
    if @route.update(route_params)
      redirect_to @route
    else
      render :new
    end
  end

  def destroy
    @route.destroy
    redirect_to routes_path
  end

  def set_route
  end

  private

  def route_params
    params.require(:route).permit(:title)
  end
end
