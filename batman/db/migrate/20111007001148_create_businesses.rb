class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
	  t.string "name", :limit => 50
	  t.string "street", :limit => 50
	  t.integer "address_id", :null =>false
	  t.integer "category_id", :null => false
	  t.time "opening"
	  t.time "closing"
      t.timestamps
    end
  end
end
