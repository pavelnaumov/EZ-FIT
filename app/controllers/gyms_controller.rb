class GymsController < ApplicationController

  def index
    @gyms = Gym.all
  end

  def show
    @gym = Gym.find(params[:id])
    @categories = @gym.categories
  end
end

