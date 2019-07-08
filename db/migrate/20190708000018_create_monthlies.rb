class CreateMonthlies < ActiveRecord::Migration[5.2]
  def change
    create_table :monthlies do |t|
      t.string :name
      t.decimal :amount
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
