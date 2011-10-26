class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
	  t.string "name_of_service"
	  t.decimal "price"
	  t.text "description"
      t.timestamps
    end
  end
end
