class OrdersController < ApplicationController


  def index
    @gyms = Gym.all
    @orders = current_user.orders.where(state: 'paid')
  end

  def create
    category = Category.find(params[:category_id])
    gym = Gym.find(params[:gym_id])
    order  = Order.create!(category_name: category.name, gym_name: gym.name,  number_of_visits: category.number_of_visits, amount: category.price, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end

#   def show
#     @order = Order.find(params[:id])
#     @items = current_user.orders.where(state: 'pending').find(params[:id])
#     @price_total = 0
#     for i in 0 .. @items.length - 1
#       @price_total += (@items[i].amount_cents)/100.to_i
#     end
#   end
# end

def cart
    @orders_cart = current_user.orders.where(state: 'pending') #like items in F
  end


  def show
    @items = current_user.orders.where(state: 'pending').find(params[:id]).categories
    @order = Order.find(params[:id])
    @order.amount_cents = Money.new(0)
    @items.each do |item|
      @order.amount_cents += item.item_price
    end
    @order.save
  end
end













