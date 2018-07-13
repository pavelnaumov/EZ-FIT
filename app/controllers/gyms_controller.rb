class GymsController < ApplicationController

  def index
    @gyms = Gym.where.not(latitide: nil, longitude: nil)

    @markers = @gyms.map do |gym|
      {
        lat: gym.latitide,
        lng: gym.longitude
      }
  end
end

  def show
    @gym = Gym.find(params[:id])
    @categories = @gym.categories
  end
end

