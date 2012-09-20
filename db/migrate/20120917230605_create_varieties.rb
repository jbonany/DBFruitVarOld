class CreateVarieties < ActiveRecord::Migration
  def change
    create_table :varieties do |t|
      t.string :name
      t.string :cultivar
      t.string :clon
      t.string :clone
      t.string :synonim
      t.integer :country_id
      t.string :breeder_idmale_parent
      t.string :female_parent
      t.integer :year
      t.integer :group_id
      t.text :observations_cat
      t.text :observations_esp
      t.text :observations_eng

      t.timestamps
    end
  end
end
