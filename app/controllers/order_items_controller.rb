class OrderItemsController < ApplicationController
  def create
    @order = current_order
    @order_item = @order.order_items.where(product_id: order_item_params[:product_id]).first

    if @order_item
      @order_item.quantity = @order_item.quantity + order_item_params[:quantity].to_i
    else
      @order_item = @order.order_items.new(order_item_params)
    end


    @order_item.save!
    @order.save
    # You have the ID
    # Load the product
    # Call product.name
    @product = Product.find(order_item_params[:product_id])
    @alert_text = @product.name
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end

private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
