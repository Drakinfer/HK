class CreatePokemons < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :generation_id
      t.string :category
      t.integer :dex_number
      t.float :height
      t.float :weight
      t.integer :breeding_id
      t.integer :type_id
      t.integer :type2_id
      t.integer :vita
      t.integer :dex
      t.integer :for
      t.integer :con
      t.integer :end
      t.integer :vol
      t.text :main_picture
      t.text :mini_picture
      t.text :description
      t.integer :pre_evolution_id
      t.string :pre_evolution_way

      t.timestamps
    end
  end
end
