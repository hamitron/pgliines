class AddTrackReferencesToMilestones < ActiveRecord::Migration
  def change
  	change_table :milestones do |t|
  		t.references :track, index: true
  	end
  end
end
