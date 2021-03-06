class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order
  helper_method :current_order_total_quantity

  def current_order
    if !session[:order_id].nil?
      begin
        order_found = Order.find(session[:order_id])
        return order_found
        if order_found == nil
          Order.new
        else
          order_found
        end
      rescue ActiveRecord::RecordNotFound
        session.delete(:order_id)
        Order.new
      end
    else
      Order.new
    end
  end

  def current_order_total_quantity
      total_quantity = 0
      current_order.order_items.each do |order_item|
        total_quantity += order_item.quantity
      end
      total_quantity
  end
end
