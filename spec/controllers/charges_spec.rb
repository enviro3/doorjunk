# require 'rails_helper'
# require 'stripe_mock'
#
#
# RSpec.describe ChargesController, type: :controller do
#
#   describe "attributes of a customer" do
#     let(:stripe_helper) { StripeMock.create_test_helper }
#     before { StripeMock.start }
#     after { StripeMock.stop }
#
#     it "creates a Stripe customer" do
#       customer = Stripe::Customer.create({
#         email: 'hola@gmail.com',
#         source: stripe_helper.generate_card_token,
#         metadata: {first_name: 'Joan', last_name:'Arc', shippingaddress1: 'montana',
#                   shippingaddres2:'Cali', shippingcountry:'Uk', shippingcity: 'Norwich',
#                   postcode: '9139', email_address: 'hi@cool.com', phone: '478-234-4248'}
#       })
#
#       expect(customer.email).to eq('hola@gmail.com')
#       expect(customer.source).to eq(stripe_helper.generate_card_token)
#       expect(customer.metadata).to eq({first_name: 'Joan', last_name:'Arc', shippingaddress1: 'montana',
#                                       shippingaddres2:'Cali', shippingcountry:'Uk', shippingcity: 'Norwich',
#                                       postcode: '9139', email_address: 'hi@cool.com', phone: '478-234-4248'})
#     end
#   end
# end
