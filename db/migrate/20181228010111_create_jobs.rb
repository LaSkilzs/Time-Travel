class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :skill_level, default: "unskilled"
      t.string :work_environment, default: "weathered"
      t.boolean :apprenticeship, default: false
      t.boolean :educated, default: false
      t.string :age, default: "adults"
      t.string :gender, default: "male"
      t.string :travel, default: "home"
      t.string :start_avg_wage_per_week
      t.string :end_avg_wage_per_week
      t.integer :low_hours_of_work
      t.integer :high_hours_of_work
      t.string :days_of_week
      t.integer :job_openings
      t.text :job_description
      t.references :generation, foreign_key: true
      t.references :industry, foreign_key: true

      t.timestamps
    end
  end
end
