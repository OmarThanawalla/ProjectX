class CreateUserConvoBridges < ActiveRecord::Migration
  def change
    create_table :user_convo_bridges do |t|
      t.references :user
      t.references :convo
      t.timestamps
    end
  end
end
