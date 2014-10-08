class AddImageToTwiines < ActiveRecord::Migration
  def change
  	change_table :twiines do |t|
  		t.attachment :image
  	end

  end
end
