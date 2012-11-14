class CreateProjectRolesUsers < ActiveRecord::Migration
  def change
    create_table :project_roles_users, :id => false do |t|
      t.references :project_role, :user
    end

    add_index :project_roles_users, [:project_role_id, :user_id],
      name: "project_roles_users_index",
      unique: true
  end
end
