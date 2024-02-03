class CreateEquipes < ActiveRecord::Migration[7.1]
  def change
    create_table :equipes do |t|
      t.string :pseudo
      t.string :role

      t.timestamps
    end
  end
end
