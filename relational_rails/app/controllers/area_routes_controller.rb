class AreaRoutesController < ApplicationController
  def index
    @area = Area.find(params[:area_id])
    @routes = @area.routes
  end
end
