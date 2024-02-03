class CreateAttaqueLevels < ActiveRecord::Migration[7.1]
  def change
    create_table :attaque_levels do |t|
      t.integer :pokemon_id
      t.integer :attaque_id
      t.integer :level

      t.timestamps
    end
  end
end
