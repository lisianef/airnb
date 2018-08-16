class RappersController < ApplicationController
  def index
    # @rappers = Rapper.where.not(latitude: nil, longitude: nil)
    # @markers = @rappers.map do |rapper|
    #   {
    #     lat: rapper.latitude,
    #     lng: rapper.longitude,
    #     infoWindow: { content: render_to_string(partial: "/rappers/map_box", locals: { rapper: rapper }) }
    #   }
    # end
    if params[:query].present?
      @rappers = Rapper.where("blaz ILIKE ?", "%#{params[:query]}%").where.not(latitude: nil, longitude: nil)
      @markers = marquer(@rappers)
    else
      @rappers = Rapper.all.where.not(latitude: nil, longitude: nil)
      @markers = marquer(@rappers)
    end
  end

  def show
    @rapper = Rapper.find(params[:id])
  end

  private

  def marquer(rappers)
    rappers.map do |rapper|
      {
        lat: rapper.latitude,
        lng: rapper.longitude,
        infoWindow: { content: render_to_string(partial: "/rappers/map_box", locals: { rapper: rapper }) }
      }
    end
    # @rappers = Rapper.where.not(latitude: nil, longitude: nil)
  end
end
