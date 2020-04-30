class ChangeApoint < ActiveRecord::Migration[5.2]
  def change
  	    change_table :appointments do |t|
    	t.references :patient,index:true
    end
  end
end
