class GymsController < ApplicationController

  def index
    @gyms = Gym.all

    @markers = @gyms.map do |gym|
     {
        lat: gym.latitude,
        lng: gym.longitude,
        icon: iconmarker,
        infoWindow: {
          content: gym.name
        }
      }
  end
end

  def show
    @gym = Gym.find(params[:id])
    @categories = @gym.categories
  end
end

