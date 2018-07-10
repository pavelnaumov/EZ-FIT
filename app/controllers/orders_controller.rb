class OrdersController < ApplicationController


  def index
    @orders = Order.all.where(state: 'paid')
  end

  def create
    category = Category.find(params[:category_id])
    order  = Order.create!(category_name: category.name, amount: category.price, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end
end
