class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :menu_item
  scope :pending, -> { where(prepared: false) }
end
