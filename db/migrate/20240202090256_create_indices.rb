class CreateIndices < ActiveRecord::Migration[7.1]
  def change
    create_table :indices do |t|
      t.text :title
      t.text :paraph
      t.integer :rank
      t.boolean :important

      t.timestamps
    end
  end
end