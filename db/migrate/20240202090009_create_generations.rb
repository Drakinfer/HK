class CreateGenerations < ActiveRecord::Migration[7.1]
  def change
    create_table :generations do |t|
      t.string :name
      t.integer :rank

      t.timestamps
    end
  end
end
