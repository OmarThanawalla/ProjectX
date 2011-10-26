class CreateUserConvoBridges < ActiveRecord::Migration
  def change
    create_table :user_convo_bridges do |t|
	  t.integer "User_ID", :null =>false
	  t.integer "Convo_ID", :null => false
      t.timestamps
    end
  end
end
