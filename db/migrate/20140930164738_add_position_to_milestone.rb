class AddPositionToMilestone < ActiveRecord::Migration
  def change
    add_column :milestones, :position, :integer
  end
end
