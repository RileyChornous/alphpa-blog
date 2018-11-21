class FixUpdatedAt < ActiveRecord::Migration
  def self.up
    rename_column :articles, :updated_ar, :updated_at
  end
  def self.down
  end
end
