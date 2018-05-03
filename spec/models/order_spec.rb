require 'rails_helper'

RSpec.describe Order, type: :model do
  it {is_expected.to have_many(:order_items)}
  it {is_expected.to belong_to(:order_status)}

  describe "has a subtotal" do
    let (:order_item){3}
    let (:unit_price){2.0}
    let (:quantity){2}
    let (:product){Product.new(price: 2.00)}
    let (:my_order_item){OrderItem.new(unit_price: unit_price, quantity: quantity, product: product)}
    let (:my_order_item2){OrderItem.new(unit_price: 3.00, quantity: quantity, product: product)}
    let (:order){Order.new(subtotal: 7)}

    it "will be the sum of all the order items" do
      expect(order.subtotal).to be_within(0.1).of((my_order_item.unit_price) + (my_order_item2.unit_price))
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
