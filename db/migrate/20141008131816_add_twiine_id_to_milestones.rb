class AddTwiineIdToMilestones < ActiveRecord::Migration
  def change
  	change_table :milestones do |t|
  		t.references :twiine, index: true
  	end
  end
end
