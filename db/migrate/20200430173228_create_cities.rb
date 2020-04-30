class CreateCities < ActiveRecord::Migration[5.2]
  def change
	    create_table :cities do |t|
	      t.string :name

	      t.timestamps
	    end

	    change_table :doctors do |t|
	    	t.references :city,index:true
	    end	    

	    change_table :patients do |t|
	    	t.references :city,index:true
	    end

	    change_table :appointments do |t|
	    	t.references :city,index:true
	    end

  	end
end
