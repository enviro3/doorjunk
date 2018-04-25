require 'rails_helper'

RSpec.describe OrderStatus, type: :model do
  it {is_expected.to have_many(:orders)}
  let(:orderstatus) { OrderStatus.create!(name: "test") }


  describe "attributes" do
    it "has an id, name, and timestamps" do
     expect(orderstatus).to have_attributes(id: orderstatus.id, name: orderstatus.name, created_at: orderstatus.created_at, updated_at: orderstatus.updated_at)
    end
   end
end
