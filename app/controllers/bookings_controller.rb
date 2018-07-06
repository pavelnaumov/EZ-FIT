class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @gym = Gym.find(params[:id])
  end


    def show
      @booking = Booking.new
      @gym = Gym.find(params[:gym_id])
      @category = @gym.categories
  end
end

