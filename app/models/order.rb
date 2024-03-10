class Order < ApplicationRecord
    has_many :order_items
    has_many :menu_items, through: :order_items

    accepts_nested_attributes_for :order_items
    scope :fully_prepared, -> { 
        where(paid: nil)
          .includes(:order_items)
          .select { |order| order.order_items.all?(&:prepared) }
      }
end
