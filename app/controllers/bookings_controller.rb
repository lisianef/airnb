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
end
