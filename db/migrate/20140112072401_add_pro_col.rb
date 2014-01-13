class AddProCol < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.string :member_id
      t.remove :email
    end
  end
end
