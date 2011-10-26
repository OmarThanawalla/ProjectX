class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
	  t.string "first_name", :limit =>50
	  t.string "last_name", :limit =>50
	  t.integer "business_id", :null => false
	  t.text "description", :null => false
      t.timestamps
    end
  end
end
