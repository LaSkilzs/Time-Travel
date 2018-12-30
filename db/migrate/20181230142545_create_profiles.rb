class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :age
      t.string :gender, default: "other"
      t.string :ethnicity, default: "American"
      t.string :religion, default: "none"
      t.string :marital_status, default: "single"
      t.string :education, default: "high school"

      t.timestamps
    end
  end
end
