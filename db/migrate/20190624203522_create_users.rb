class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :avatar, default: "https://cdn-s3.si.com/s3fs-public/styles/marquee_large_2x/public/2019/05/15/bol-bol-oregon-measurements-height-weight-combine.jpg?itok=Pf9BJO98"
      t.integer :monthly_take_home

      t.timestamps
    end
  end
end
