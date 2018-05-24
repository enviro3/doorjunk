# class FixForeignKeysMaybe < ActiveRecord::Migration[5.1]
#   def change
#     remove_foreign_key :order_items, :product
#     remove_foreign_key :order_items, :order
#     add_foreign_key :order_items, :product, on_delete: :cascade
#     add_foreign_key :order_items, :order, on_delete: :cascade
#   end
# end
