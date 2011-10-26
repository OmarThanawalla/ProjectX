class AlterUserConvoBridge < ActiveRecord::Migration
  def up
	rename_column("user_convo_bridges","User_ID", "users")
	rename_column("user_convo_bridges","Convo_ID", "convos")
  end

  def down
	rename_column("user_convo_bridges","convos","Convo_ID")
	rename_column("user_convo_bridges","users","User_ID")
  end
end
