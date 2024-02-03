class CreateAttaques < ActiveRecord::Migration[7.1]
  def change
    create_table :attaques do |t|
      t.string :name
      t.integer :type_id
      t.integer :energie1
      t.integer :energie2
      t.string :category
      t.string :range
      t.string :precision
      t.integer :damage_base
      t.text :description

      t.timestamps
    end
  end
end
