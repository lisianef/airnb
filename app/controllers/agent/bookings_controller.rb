class Agent::BookingsController < ApplicationController
  before_action :set_booking, only: [:accept, :refuse]

  def index
    @all_bookings = Booking.all
    @id = current_user.id
    @bookings = []
    @all_bookings.each do |booking|
      if booking.rapper.agent.id == current_user.id
        @bookings << booking
      end
    end

    @past = []
    @accepted = []
    @pending = []

    @bookings.each do |booking|
      if booking.ending_on < Date.current
        @past << booking
      elsif booking.status == "pending"
        @pending << booking
      else booking.status == "accepted"
        @accepted << booking
      end
    end
  end

  def accept
    @booking.status = "accepted"
    @booking.save
    redirect_to agent_bookings_path
  end

  def refuse
    @booking.status = "refused"
    @booking.save
    redirect_to agent_bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:status)
  end
end
