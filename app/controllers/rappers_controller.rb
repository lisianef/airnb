class RappersController < ApplicationController
  def index
    @rappers = Rapper.all
    if params[:query].present?
      @rapper = Rapper.where("blaz ILIKE ?", "%#{params[:query]}%")
    else
      @rappers = Rapper.all
    end
  end

  def show
    @rapper = Rapper.find(params[:id])
  end

end
