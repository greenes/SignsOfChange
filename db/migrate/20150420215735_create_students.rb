class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :age
      t.string :location
      t.boolean :victim
      t.timestamps null: false
    end
  end
end
