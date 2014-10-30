class AddTrackReferencesToStones < ActiveRecord::Migration
  def change
  	change_table :stones do |t|
  		t.references :track, index: true
  	end
  end
end
