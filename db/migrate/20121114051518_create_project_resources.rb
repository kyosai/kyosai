class CreateProjectResources < ActiveRecord::Migration
  def change
    create_table :project_resources do |t|
      t.integer :project_id
      t.string :name

      t.timestamps
    end
  end
end
