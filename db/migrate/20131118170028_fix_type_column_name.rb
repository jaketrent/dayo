class FixTypeColumnName < ActiveRecord::Migration
  def change
    rename_column :accidents, :type, :name
  end
end
