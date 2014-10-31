class AddValueDescriptorToTracks < ActiveRecord::Migration
  def change

  	change_table :tracks do |t|
  		t.string :descriptor
  	end
  end
end
