class AddGoalAttributeToMilestones < ActiveRecord::Migration
  def change
    add_column :milestones, :goal, :boolean
  end
end
