class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :member_id
      t.string :product_id
      t.integer :qty
      t.string :remittance
      t.timestamps
    end
  end
end
