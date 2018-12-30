class ChangeColumnsOnJob < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :job_score, :integer, default: 0
    remove_foreign_key :jobs, :generations
    remove_reference :jobs, :generation, index: true
  end
end
