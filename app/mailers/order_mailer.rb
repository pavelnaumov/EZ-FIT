class OrderMailer < ApplicationMailer
  
  def creation_confirmation(order)
    @order = order

    mail(
      to: @order.user.email,
      subject: "Order #{@order.id}"
      )

  end
end