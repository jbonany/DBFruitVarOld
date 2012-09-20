class CreatePlots < ActiveRecord::Migration
  def change
    create_table :plots do |t|
      t.string :name
      t.string :acronym
      t.integer :location_id
      t.integer :especie_id

      t.timestamps
    end
  end
end
