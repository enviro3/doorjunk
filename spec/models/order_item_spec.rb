require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  it {is_expected.to belong_to(:product)}
  it {is_expected.to belong_to(:order)}


  #orderitem total price should be the product of price of item multiplied by quanitty of that item
  describe "total price" do
    let (:price){5.0}
    let (:quantity){2}
    let (:my_order_item){OrderItem.new(unit_price: price, quantity: quantity)}
    it "will be the product of price of item multiplied by quantity of that item" do
      expect(my_order_item.total_price).to eq(price * quantity) #experiment (called my_order_item.total_price) and verification
    end
  end




  # validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }

end
