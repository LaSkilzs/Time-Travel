class CreateFunfacts < ActiveRecord::Migration[5.2]
  def change
    create_table :funfacts do |t|
      t.references :generation, foreign_key: true
      t.string :fact_length
      t.text :fact

      t.timestamps
    end
  end
end
