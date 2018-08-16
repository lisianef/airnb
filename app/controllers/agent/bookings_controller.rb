class Agent::BookingsController < ApplicationController
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
end
