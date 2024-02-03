class CreateFormes < ActiveRecord::Migration[7.1]
  def change
    create_table :formes do |t|
      t.integer :pokemon_id
      t.integer :evolution_id
      t.string :region

      t.timestamps
    end
  end
end
