class RappersController < ApplicationController
  def index
    @rappers = Rapper.where.not(latitude: nil, longitude: nil)
    @markers = @rappers.map do |rapper|
      {
        lat: rapper.latitude,
        lng: rapper.longitude,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
    # @rappers = Rapper.all
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
