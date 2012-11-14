class CreateProjectResourceRolesProjectRoles < ActiveRecord::Migration
  def change
    create_table :project_resource_roles_project_roles, :id => false do |t|
      t.references :project_resource_role, :project_role
    end

    add_index :project_resource_roles_project_roles, [:project_resource_role_id, :project_role_id],
      name: "project_resource_roles_project_roles_index",
      unique: true
  end
end
