class CreateProjectResourceRoles < ActiveRecord::Migration
  def change
    create_table :project_resource_roles do |t|
      t.integer :project_id
      t.integer :project_role_id
      t.string :project_resource_id
      t.boolean :manage
      t.boolean :read
      t.boolean :edit
      t.boolean :delete

      t.timestamps
    end
  end
end
