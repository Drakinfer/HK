class CreateAttaqueEggMoves < ActiveRecord::Migration[7.1]
  def change
    create_table :attaque_egg_moves do |t|
      t.integer :pokemon_id
      t.integer :attaque_id

      t.timestamps
    end
  end
end
