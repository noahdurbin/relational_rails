class AreasController < ApplicationController
  def index
    @areas = Area.order(created_at: :desc)
  end

  def show
    @area = Area.find(params[:id])
  end
end
