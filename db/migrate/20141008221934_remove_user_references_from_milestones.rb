class RemoveUserReferencesFromMilestones < ActiveRecord::Migration
  def change
  	change_table :milestones do |t|
  		t.remove :user_id
  	end

  end
end
