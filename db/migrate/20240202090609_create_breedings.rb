class CreateBreedings < ActiveRecord::Migration[7.1]
  def change
    create_table :breedings do |t|
      t.string :ratio

      t.timestamps
    end
  end
end
