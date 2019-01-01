class AddColumnOnHelpWanted < ActiveRecord::Migration[5.2]
  def change
    add_reference :helpwanteds, :profile, index: true
    add_foreign_key :helpwanteds,  :profiles

    add_column :helpwanteds, :female, :boolean, default: false
  end
end
