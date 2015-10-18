class CreateCows < ActiveRecord::Migration
  def change
    create_table :cows do |t|
      t.string :name, null: false
      t.string :breed, null: false
      t.timestamps null: false
    end
  end
end
