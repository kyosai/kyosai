class CreateProjectRoleResources < ActiveRecord::Migration
  def change
    create_table :project_role_resources do |t|
      t.integer :project_role_id
      t.integer :project_resource_id
      t.boolean :able_to_read ,:default => false
      t.boolean :able_to_create , :default => false
      t.boolean :able_to_delete, :default => false
      t.boolean :able_to_edit, :default => false
      t.boolean :able_to_manage, :default => false

      t.timestamps
    end
  end
end
