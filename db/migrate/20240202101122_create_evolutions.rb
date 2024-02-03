class CreateEvolutions < ActiveRecord::Migration[7.1]
  def change
    create_table :evolutions do |t|
      t.integer :pokemon_id
      t.integer :evolution_id
      t.string :evolution_way

      t.timestamps
    end
  end
end
