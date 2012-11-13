class CreateProjectResources < ActiveRecord::Migration
  def change
    create_table :project_resources do |t|
      t.string :name
      t.text :description
      t.integer :project_id
      t.boolean :third_party
      t.string :identifier

      t.timestamps
    end
  end
end
