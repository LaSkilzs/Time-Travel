class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.references :profile, foreign_key: true
      t.boolean :citizenship, default: false
      t.boolean :parentunion, default: false
      t.boolean :parenttrade, default: false
      t.boolean :entreprenuership, default: false
      t.boolean :workwithothers, default: false
      t.boolean :monotoustask, default: false
      t.boolean :worklifebalance, default: false
      t.boolean :workenvironment, default: false
      t.boolean :toomanyhours, default: false
      t.string :worklocation, default: "southern"

      t.timestamps
    end
  end
end
