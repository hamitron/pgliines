class Users < ActiveRecord::Migration
  def change


  	create_table :users do |t|
      t.string :name
  		t.string :email
  		t.integer :age
  		t.string :specialty
      t.attachment :image
  		t.string :password_digest

 
      t.timestamps
    end
  end
end
