class AddBuyerStatus < ActiveRecord::Migration
  def change
    change_table :buyers do |t|
      t.string :status
      end
    end
end
