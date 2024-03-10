class OrdersController < ApplicationController
    def new
      @order = Order.new
      @menu_items = MenuItem.all
    end
  
    def create
      @order = Order.new(order_params)
      
      
      if @order.save
        
        respond_to do |format|
          format.js 
        end
      else
        render :new
      end
    end
    
    def pickup
        @ready_orders = Order.includes(:order_items).where(order_items: { prepared: true })
      end
    
      def mark_paid
        @order = Order.find(params[:id])
        @order.update(paid: true)
        respond_to do |format|
          format.js
        end
      end
    private
    def order_params
      params.require(:order).permit(:car_registration, menu_item_ids: [])
    end

  end