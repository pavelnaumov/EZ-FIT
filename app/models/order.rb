class Order < ApplicationRecord
  belongs_to :user
  monetize :amount_cents

  after_create :send_order_confirmation

  private

  def send_order_confirmation
    if User.last.orders.last.state == 'paid'
      UserMailer.creation_confirmation(@order).deliver_now
    end
  end
end
