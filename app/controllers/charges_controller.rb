class ChargesController < ApplicationController

  def new
    order = Order.where(user_id: current_user.id)

    @order_amount =  order.last.total_amount
  end

def create
  # Amount in cents
  @amount = 500

  order = Order.where(user_id: current_user.id)

  @order_amount =  order.last.total_amount

  # @order_amount = order.total_amount


  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]

  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end

end
