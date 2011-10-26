class AlterCustomer2 < ActiveRecord::Migration
  def up
	change_column("customers", "address_id", :integer, :null => true)
  end

  def down
	change_column("customers", "address_id", :integer, :null =>  false)
  end
end
