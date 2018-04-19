class OrderController < ApplicationController
  def new
    @order_items = current_order.order_items
  end

  def create
  end
end
