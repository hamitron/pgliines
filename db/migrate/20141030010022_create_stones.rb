class CreateStones < ActiveRecord::Migration
  def change
    create_table :stones do |t|
      t.float :value
      t.references :user, index: true
      t.string :shout

      t.timestamps
    end
  end
end
