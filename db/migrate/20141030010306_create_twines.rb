class CreateTwines < ActiveRecord::Migration
  def change
    create_table :twines do |t|
      t.references :user, index: true
      t.string :name

      t.timestamps
    end
  end
end
