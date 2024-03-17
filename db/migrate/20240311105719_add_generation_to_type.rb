class AddGenerationToType < ActiveRecord::Migration[7.1]
  def change
    add_reference :types, :generation, foreign_key: true
    add_column :types, :active, :boolean, null: false, default: true

    Type.all.map do |type|
      type.generation = Generation.first
      type.active = true
      type.save
    end
  end
end
