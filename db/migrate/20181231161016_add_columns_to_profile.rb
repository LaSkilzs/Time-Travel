class AddColumnsToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :availableforwork, :string, default: "today"
    add_column :profiles, :trade, :boolean, default: false
    add_column :profiles, :experience, :string, default: "unskilled"
  end
end
