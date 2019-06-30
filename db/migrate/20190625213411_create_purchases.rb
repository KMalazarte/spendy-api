class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.string :date
      t.string :name
      t.string :category
      t.string :place_of_purchase
      t.decimal :out_of_pocket
      t.decimal :actual_paid
      t.string :payment_method
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
