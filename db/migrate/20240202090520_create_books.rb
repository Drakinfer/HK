class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :name
      t.text :url
      t.text :image
      t.integer :rank

      t.timestamps
    end
  end
end
