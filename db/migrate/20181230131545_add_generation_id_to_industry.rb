class AddGenerationIdToIndustry < ActiveRecord::Migration[5.2]
  def change
    add_reference :industries, :generation, index: true
    add_foreign_key :industries, :generations
  end
end
