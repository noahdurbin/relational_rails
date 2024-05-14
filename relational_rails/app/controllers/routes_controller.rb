class RoutesController < ApplicationController
  def index
    @routes = Route.all
  end

  def show
    @route = Route.find(params[:id])
  end

  def by_area
      @area = Area.find(params[:area_id])
      @routes = @area.routes
  end
end
