class ProductsController < ApplicationController
    def show
        @products = Product.find(params[:id])
    end

    def index
        @products = Product.all
        @order_item = current_order.order_items.new
      end

end
