class AddPrivacyToTwiines < ActiveRecord::Migration
  def change
    add_column :twiines, :is_private, :boolean, :default => false
  end
end
