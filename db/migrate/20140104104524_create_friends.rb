class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :email
      t.string :femail
      t.integer :status
      t.timestamps
    end
  end
end
