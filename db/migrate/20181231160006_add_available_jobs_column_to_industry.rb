class AddAvailableJobsColumnToIndustry < ActiveRecord::Migration[5.2]
  def change
    add_column :industries, :availablejobs, :integer, default: 0
  end
end
