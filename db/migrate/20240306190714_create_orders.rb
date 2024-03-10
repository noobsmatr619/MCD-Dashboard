class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :car_registration
      t.boolean :paid
      t.timestamps
    end
  end
end
