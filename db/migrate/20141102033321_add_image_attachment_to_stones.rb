class AddImageAttachmentToStones < ActiveRecord::Migration
  def change

  	change_table :stones do |t|
  		t.attachment :image
  	end
  end
end
