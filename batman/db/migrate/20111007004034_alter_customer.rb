class AlterCustomer < ActiveRecord::Migration
  def up
	change_column("customers", "address_id", :integer)
  end

  def down
	change_column("customers", "address_id", :string)
  end
end
