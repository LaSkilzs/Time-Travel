class RemoveColumnsOnHelpwanted < ActiveRecord::Migration[5.2]
  def change
    remove_column :helpwanteds, :name, :string
    remove_column :helpwanteds, :description, :string

    add_reference :helpwanteds, :industry, index: true
    add_foreign_key :helpwanteds, :industries
  end
end
