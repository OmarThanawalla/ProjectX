class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	  t.string "FirstName", :limit => 25, :null => false
	  t.string "LastName", :limit => 40, :null => false
	  t.string "Email", :limit=> 100, :null => false
	  t.string "password", :limit=>20, :null =>false
      t.timestamps
    end
  end
end
