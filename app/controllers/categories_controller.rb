class CategoriesController < ApplicationController
  def show
    @gym = Gym.find(params[:gym_id])
    @category = Category.find(params[:id])
  end
end
