class CreateProjectRoles < ActiveRecord::Migration
  def change
    create_table :project_roles do |t|
      t.integer :prior
      t.string :name
      t.integer :project_id

      t.timestamps
    end
  end
end
