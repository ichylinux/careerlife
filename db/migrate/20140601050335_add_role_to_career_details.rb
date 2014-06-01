class AddRoleToCareerDetails < ActiveRecord::Migration
  def change
    add_column :career_details, :role, :string
  end
end
