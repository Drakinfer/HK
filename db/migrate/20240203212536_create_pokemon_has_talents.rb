class CreatePokemonHasTalents < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemon_has_talents do |t|
      t.integer :pokemon_id
      t.integer :talent_id
      t.integer :cat_talent_id

      t.timestamps
    end
  end
end
