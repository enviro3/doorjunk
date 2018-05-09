class ChargesController < ApplicationController
  def create
    @order = current_order
    @amount = amount
     # Creates a Stripe Customer object, for associating
     # with the charge
     customer = Stripe::Customer.create(
       :email => params[:stripeEmail],
       :source  => params[:stripeToken]
     )

     # Where the real magic happens
     charge = Stripe::Charge.create(
       :amount      => @amount,
       :currency    => 'usd',
       :description => 'Rails Stripe customer'
     )

     flash[:notice] = "Thanks for all the money, #{current_user.email}! Feel free to pay me again."
     redirect_to user_path(current_user) # or wherever

     # Stripe will send back CardErrors, with friendly messages
     # when something goes wrong.
     # This `rescue block` catches and displays those errors.
     rescue Stripe::CardError => e
       flash[:alert] = e.message
       redirect_to new_charge_path
   end

   def new
     @order = current_order
     @stripe_btn_data = {
       key: "#{ Rails.configuration.stripe[:publishable_key] }",
       description: "BigMoney Membership - #{current_user.name}",
       amount: Amount.default
     }
   end
end
