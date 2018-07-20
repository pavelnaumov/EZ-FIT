class GymsController < ApplicationController

  def index
    if params[:query].present?
    @gyms = Gym.where("name ILIKE?","%#{params[:query]}%")
  else
    @gyms = Gym.all
    @markers = @gyms.map do |gym|
     {
        lat: gym.latitude,
        lng: gym.longitude,
        infoWindow: {
          content: gym.name
        }
      }
    end
  end
end

  def show
    @gym = Gym.find(params[:id])
    @categories = @gym.categories
  end
end

