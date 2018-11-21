class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :articles, :creeated_at, :created_at
  end
  def self.down
  end
end
