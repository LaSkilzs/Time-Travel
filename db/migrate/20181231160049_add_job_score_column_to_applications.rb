class AddJobScoreColumnToApplications < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :app_score, :integer, default: 60
  end
end
