class AreasController < ApplicationController
  def index
    @areas = Area.all.order(created_at: :desc)
  end

  def show
    @area = Area.find(params[:id])
  end

  def new
  end

  def create
    area = Area.create!(area_params)

    redirect_to "/areas"
  end

  def edit
    @area = Area.find(params[:id])
  end

  def update
    @area = Area.find(params[:id])
    @area.update(area_params)
    redirect_to "/areas/#{@area.id}"
  end

  def area_params
    params.permit(:name, :rock_type, :state, :county, :approach_distance, :roadside_access)
  end
end
