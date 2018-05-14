class ChargesController < ApplicationController
  def create
    @order = current_order

     # Creates a Stripe Customer object, for associating
     # with the charge
     customer = Stripe::Customer.create(
       :email => params[:stripeEmail],
       :source  => params[:stripeToken],
       :metadata => {:first_name => params[:firstname],
                    :last_name => params[:lastname],
                    :shippingaddress1 => params[:shippingaddress1],
                    :shippingaddress2 => params[:shippingaddress2],
                    :shippingcountry => "England",
                    :shippingcounty => params[:shippingcountry],
                    :shippingcity => params[:shippingcity],
                    :postcode => params[:postcode],
                    :email_address => params[:email],
                    :phone => params[:phone]}
     )

     # Where the real magic happens
     charge = Stripe::Charge.create(
       :customer    => customer.id,
       :amount      => (@order.subtotal * 100).to_i,
       :description => 'Rails Stripe customer',
       :currency    => 'usd'

     )
     #the below Flash notice is not showing up! Note to Richard
     flash[:notice] = "Thanks for all the money, #{params[:email]}! Feel free to pay me again."
     # redirect_to root_path

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
