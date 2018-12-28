class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :skill_level
      t.string :work_environment
      t.boolean :apprenticeship
      t.boolean :educated
      t.string :age
      t.string :gender
      t.string :travel
      t.decimal :start_av_wage_per_week
      t.decimal :end_avg_wage_per_week
      t.Integer :hours_of_work
      t.string :days_of_week
      t.Integer :job_openings
      t.text :description
      t.references :generation, foreign_key: true
      t.references :industry, foreign_key: true

      t.timestamps
    end
  end
end
