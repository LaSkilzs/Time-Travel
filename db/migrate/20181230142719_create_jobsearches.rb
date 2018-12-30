class CreateJobsearches < ActiveRecord::Migration[5.2]
  def change
    create_table :jobsearches do |t|
      t.string :search_name
      t.references :helpwanted, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
