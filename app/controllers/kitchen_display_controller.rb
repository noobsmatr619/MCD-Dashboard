class KitchenDisplayController < ApplicationController
    def index
      @pending_orders = OrderItem.pending

    end
  
    def mark_prepared
      order_item = OrderItem.find(params[:order_item_id])
      order_item.update(prepared: true)
      respond_to do |format|
        format.js 
      end
    end
  end