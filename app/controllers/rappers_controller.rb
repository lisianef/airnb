class RappersController < ApplicationController
  def index
    if params[:query].present?
      @rappers = Rapper.where("blaz ILIKE ?", "%#{params[:query]}%").where.not(latitude: nil, longitude: nil)
      @markers = marker(@rappers)
    else
      @rappers = Rapper.all.where.not(latitude: nil, longitude: nil)
      @markers = marker(@rappers)
    end
  end

  def show
    @rapper = Rapper.find(params[:id])
  end

  private

  def marker(rappers)
    rappers.map do |rapper|
      {
        lat: rapper.latitude,
        lng: rapper.longitude,
        infoWindow: { content: render_to_string(partial: "/rappers/map_box", locals: { rapper: rapper }) }
      }
    end
  end
end
