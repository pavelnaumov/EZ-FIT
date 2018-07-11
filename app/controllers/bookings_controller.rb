
class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @gym = Gym.find(params[:gym_id])
    @category = Category.find(params[:category_id])
  end

  def create
end

