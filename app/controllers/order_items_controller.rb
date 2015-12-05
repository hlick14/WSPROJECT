class OrderItemsController < ApplicationController



  def create
    @order = current_order
    @order_item = @order.order_items.new(order_item_params)
    
    @user = current_user
    @order.save

    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_item.update_attributes(user_order)
   
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @user = current_user
    @order_items = @order.order_items
  end
 
  
private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id, :user_id)
  end
  def user_order
    params.require(:order).permit(:user_id)
  end
end