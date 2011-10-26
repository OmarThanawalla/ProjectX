class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
	  t.string "name_of_category", :limit => 50
	  t.text "description", :limit =>100
      t.timestamps
    end
  end
end
