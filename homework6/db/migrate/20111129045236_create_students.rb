class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students, :id => false do |t|
      t.integer "ID"
      t.string "LAST"
      t.string "FIRST"
      t.string "MAJOR"
      t.decimal "GPA", :precision => 3 , :scale => 2
      t.timestamps
    end
  end
end
