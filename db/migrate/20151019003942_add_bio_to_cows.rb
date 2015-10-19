class AddBioToCows < ActiveRecord::Migration
  def change
    add_column :cows, :biography, :string
  end
end
