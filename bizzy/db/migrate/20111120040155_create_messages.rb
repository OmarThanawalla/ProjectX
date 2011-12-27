class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :convo, :null => false
      t.references :user
      t.text "SMS", :null => false, :default => "", :limit => 160
      t.timestamps
    end
  end
end
