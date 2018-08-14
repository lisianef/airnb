class RappersController < ApplicationController
  def index
    @rappers = Rapper.all
    # @const_map = new GMaps({ el: '#map', lat: 48.8648482, lng: 2.3798534, zoom: 14 })
    # if params[:query].present?
    #   @rapper = Rapper.where("blaz ILIKE ?", "%#{params[:query]}%")
    # else
    #   @rappers = Rapper.all
    # end
  end

  def show
    @rapper = Rapper.find(params[:id])
  end

end
