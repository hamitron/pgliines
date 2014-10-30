class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.references :user, index: true
      t.string :name
      t.float :value
      t.string :description

      t.timestamps
    end
  end
end
