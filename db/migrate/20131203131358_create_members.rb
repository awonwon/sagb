class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
    		t.string :email
    		t.string :password
    		t.string :name
       t.string :pic
     	t.timestamps
    end
  end
end
