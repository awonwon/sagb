class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :pic
      t.string :email
      t.integer :price
      t.string :description
      t.integer :status
      t.integer :lowbondPeople
      t.timestamp :start_at
      t.timestamp :end_at
      t.timestamps
    end
  end
end
