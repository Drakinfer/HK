class CreateCatTalents < ActiveRecord::Migration[7.1]
  def change
    create_table :cat_talents do |t|
      t.string :name

      t.timestamps
    end
  end
end
