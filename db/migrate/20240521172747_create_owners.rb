class CreateOwners < ActiveRecord::Migration[7.1]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
