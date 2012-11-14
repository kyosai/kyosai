class CreateProjectResourceRoles < ActiveRecord::Migration
  def change
    create_table :project_resource_roles do |t|
      t.integer :project_resource_id
      t.boolean :able_to_read
      t.boolean :able_to_edit
      t.boolean :able_to_create
      t.boolean :able_to_delete
      t.boolean :able_to_manage

      t.timestamps
    end
  end
end
