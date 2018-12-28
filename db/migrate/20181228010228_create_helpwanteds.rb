class CreateHelpwanteds < ActiveRecord::Migration[5.2]
  def change
    create_table :helpwanteds do |t|
      t.string :name
      t.string :location
      t.string :wage_per_week
      t.text :description
      t.boolean :housing_offered
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
