class BookingsController < ApplicationController
  protect_from_forgery
  before_action :authenticate_user!

  def index
    bookings = Booking.all
    @past = []
    @accepted = []
    @pending = []

    bookings.each do |booking|
      if booking.ending_on < Date.current
        @past << booking
      elsif booking.status == "pending"
        @pending << booking
      else booking.status == "accepted"
        @accepted << booking
      end
    end
  end

  def create
    @rapper = Rapper.find(params[:rapper_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to rapper_path(@rapper)
    else
      render 'rappers/show'
    end
  end


  private

  def booking_params
    params.require(:booking).permit(:starting_on, :ending_on)
  end

end
