class CreateTwiines < ActiveRecord::Migration
  def change
    create_table :twiines do |t|
      t.references :user, index: true
      t.integer :fulfillment # this is a percentage to visualize project completion.
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
