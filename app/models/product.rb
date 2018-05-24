class Product < ApplicationRecord
  has_many :order_items, dependent: destroy

  default_scope { where(active: true) } #checks if active flag is set to true. Ensures that deleted/inactive products aren't shown
end
