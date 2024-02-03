class CreateAttaqueDts < ActiveRecord::Migration[7.1]
  def change
    create_table :attaque_dts do |t|
      t.integer :pokemon_id
      t.integer :attaque_id
      t.integer :number

      t.timestamps
    end
  end
end
