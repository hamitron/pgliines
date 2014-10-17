class AddTrackingAndFollowedCountToTwiine < ActiveRecord::Migration
  def change
  	change_table :twiines do |t|
  		t.integer :tracking, :array => true
  		t.integer :followed  


  	end


  end

end
