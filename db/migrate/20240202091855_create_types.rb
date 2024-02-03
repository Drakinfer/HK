class CreateTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :types do |t|
      t.string :name
      t.float :bug
      t.float :dark
      t.float :dragon
      t.float :electric
      t.float :fairy
      t.float :fighting
      t.float :fire
      t.float :flying
      t.float :ghost
      t.float :grass
      t.float :ground
      t.float :ice
      t.float :normal
      t.float :poison
      t.float :psychic
      t.float :rock
      t.float :steel
      t.float :water

      t.timestamps
    end
  end
end
