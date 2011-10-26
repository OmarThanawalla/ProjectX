class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
	  t.string "city", :null => false, :limit => 50
	  t.string "state", :null => false, :limit => 12
	  t.integer "zip_code", :null => false, :limit =>5
      t.timestamps
    end
  end
end
