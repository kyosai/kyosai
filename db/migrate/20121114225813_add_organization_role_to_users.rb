class AddOrganizationRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :organization_role_id, :integer
  end
end
