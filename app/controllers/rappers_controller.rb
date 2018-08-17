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
    @booking = Booking.new
  end

  private

  def marker(rappers)

    icon = {
      url: "http://www.myiconfinder.com/uploads/iconsets/256-256-87d8abae0d940c0a7145c55cf1c2e3dd-dollar.png"
    }

    @markers = rappers.map do |rapper|
      {
        lat: rapper.latitude,
        lng: rapper.longitude,
        infoWindow: { content: render_to_string(partial: "/rappers/map_box", locals: { rapper: rapper }) },
        icon: icon
      }
    end
  end
end
