class FixColumnNameEspecieId < ActiveRecord::Migration
  def change
    rename_column :plots, :especie_id, :especy_id
  end
end
