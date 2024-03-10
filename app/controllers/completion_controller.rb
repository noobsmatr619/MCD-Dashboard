class CompletionController < ApplicationController
    def index
        @ready_orders = Order.fully_prepared
                            
        #   @ready_orders = Order.includes(:order_items).where(order_items: { prepared: true }).where(paid: nil)
    end

  end
  