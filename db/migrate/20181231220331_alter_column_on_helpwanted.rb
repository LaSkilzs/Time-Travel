class AlterColumnOnHelpwanted < ActiveRecord::Migration[5.2]
  def up
    change_column :helpwanteds, :wage_per_week, 'float USING CAST(wage_per_week AS float)'
  end
end
