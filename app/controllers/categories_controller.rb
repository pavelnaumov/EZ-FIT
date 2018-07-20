class CategoriesController < ApplicationController
  def show
    @gym = Gym.find(params[:gym_id])
    @category = Category.find(params[:id])
    @order  = Order.create!(category_name: @category.name, gym_name: @category.gym.name, gym_photo: @category.gym.photo, number_of_visits: @category.number_of_visits, amount: @category.price, state: 'pending', user: current_user)
  end
end
