class AddImageColumnToHelpwanteds < ActiveRecord::Migration[5.2]
  def change
    add_column :helpwanteds, :image, :string, default: "none"
  end
end
