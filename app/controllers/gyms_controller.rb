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
      respond_to do |format|
        format.json
      format.html          # /app/views/home/index.html.erb
      format.html.phone    # /app/views/home/index.html+phone.erb
      format.html.tablet   # /app/views/home/index.html+tablet.erb
    end
  end
end
end

def show
  @gym = Gym.find(params[:id])
  @categories = @gym.categories
end
end

