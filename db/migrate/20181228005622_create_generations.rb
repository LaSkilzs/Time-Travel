class CreateGenerations < ActiveRecord::Migration[5.2]
  def change
    create_table :generations do |t|
      t.integer :decade
      t.string :nickname
      t.string :description
      t.text :story

      t.timestamps
    end
  end
end
