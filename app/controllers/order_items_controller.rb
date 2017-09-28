class OrderItemsController < ApplicationController
    
      def create
        @order = current_order
        @item = @order.order_items.new(item_params)
        
        @order.save
        # @item.save
        session[:order_id] = @order.id
        puts "current order:"
        puts current_order
        puts "order id in session:"
        puts session[:order_id]
        redirect_to root_path
      end

      def destroy
        @order = current_order
        @item = @order.order_items.find(params[:id])
        @item.destroy
        @order.save
        redirect_to cart_path
      end
    
      private
    
      def item_params
        params.require(:order_item).permit(:quantity, :product_id)
      end
    end