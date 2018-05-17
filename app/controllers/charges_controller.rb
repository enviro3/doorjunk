class ChargesController < ApplicationController
  def create
    @order = current_order
puts "DERPDERPDERPDERPDERP"
puts params
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
                    :postcode => params[:postcode]}
     )
     begin
       # Where the real magic happens
       charge = Stripe::Charge.create(
         :customer    => customer.id,
         :amount      => (@order.subtotal * 100).to_i,
         :description => 'Rails Stripe customer',
         :currency    => 'usd'
       )
       flash[:notice] = "Thanks for all the money, #{params[:firstname]} #{params[:lastname]}! Feel free to pay me again."
       #play with charge object, valid charge so send email to customer
       redirect_to root_path
       session.delete(:order_id)
     rescue Stripe::CardError => e
       flash[:alert] = e.message
       redirect_to new_charge_path
     end



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
