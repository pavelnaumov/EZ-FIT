class OrdersController < ApplicationController


  def index
    @gyms = Gym.all
    @orders = current_user.orders.where(state: 'paid')
  end

  def confirmation
    @order = current_user.orders.last
  end

  def create
    category = Category.find(params[:category_id])
    order  = Order.create!(category_name: category.name, gym_name: category.gym.name, number_of_visits: category.number_of_visits, amount: category.price, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end
end








