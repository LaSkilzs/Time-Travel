class AddImageColumnToIndustry < ActiveRecord::Migration[5.2]
  def change
     add_column :industries, :image, :string, default: "none"
  end
end
