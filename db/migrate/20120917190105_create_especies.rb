class CreateEspecies < ActiveRecord::Migration
  def change
    create_table :especies do |t|
      t.string :name
      t.string :latin_name

      t.timestamps
    end
  end
end
