class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
	  t.text "Message", :default=> "", :null => false
      t.timestamps
    end
  end
end
