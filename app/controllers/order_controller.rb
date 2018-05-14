class OrderController < ApplicationController
  def new
    @order_items = current_order.order_items
    @order = current_order
  end

  def create
    puts "Here are params!!!"
    puts params
  end
end
