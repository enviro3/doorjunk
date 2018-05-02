require 'rails_helper'

RSpec.describe Order, type: :model do
  it {is_expected.to have_many(:order_items)}
  it {is_expected.to belong_to(:order_status)}

  @order_status = Order.order_status_id = 1
  @subtotal = Order.subtotal = subtotal

describe "subtotal" do
  let (:price){5.0}
  let (:quantity){2}
  it "has a subtotal" do


  end

  it "has set_order_status" do
    expect( )order_status_id = 1
  end

  it "has update_subtotal" do
    Order.subtotal = subtotal
  end
end

end



# belongs_to :order_status
# has_many :order_items
# before_validation :set_order_status, on: :create
# before_save :update_subtotal
#
# def subtotal
#   order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
# end
# private
# def set_order_status
#   self.order_status_id = 1
# end
#
# def update_subtotal
#   self[:subtotal] = subtotal
# end
