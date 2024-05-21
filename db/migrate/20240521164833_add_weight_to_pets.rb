class AddWeightToPets < ActiveRecord::Migration[7.1]
  def change
    add_column :pets, :weight, :float
  end
end
