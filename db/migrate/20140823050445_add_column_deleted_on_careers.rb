class AddColumnDeletedOnCareers < ActiveRecord::Migration
  def change
    add_column :careers, :deleted, :boolean, :null => false, :default => false
  end
end
