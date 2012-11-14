class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :organization_id
      t.integer :initiator_id

      t.timestamps
    end
  end
end
