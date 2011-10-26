class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
	  t.string "first_name", :limit => 25
	  t.string "last_name", :limit => 40
	  t.string "phone_number", :limit => 12
	  t.string "street", :limit =>50
	  t.string "address_id", :null => false
	  t.string "email", :null =>false
	  t.string "password", :null =>false
      t.timestamps
    end
  end
end
