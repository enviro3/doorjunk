require 'rails_helper'

RSpec.describe Product, type: :model do
  it {is_expected.to have_many(:order_items)}
  let(:product) {Product.create!(name: "test")}

  describe "attributes" do
    it "has a name, price, timestamps, and is active" do
     expect(product).to have_attributes(name: product.name, price: product.price, created_at: product.created_at, updated_at: product.updated_at) #How test active is true?
    end
  end
end
