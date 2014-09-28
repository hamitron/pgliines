class Milestones < ActiveRecord::Migration
  def change

  	create_table :milestones do |t|
      t.string :name
  		t.text :description
  		t.string :project
  		t.attachment :image
  		t.references :user, index: true
 
      t.timestamps
    
    end
  end
end
