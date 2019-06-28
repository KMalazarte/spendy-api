class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.date :date
      t.string :name
      t.string :category
      t.string :place_of_purchase
      t.decimal :out_of_pocket
      t.decimal :actual_paid
      t.string :payment_method
      t.integer :user_id

      t.timestamps
    end
  end
end
