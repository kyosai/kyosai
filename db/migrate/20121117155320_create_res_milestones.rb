class CreateResMilestones < ActiveRecord::Migration
  def change
    create_table :res_milestones do |t|
      t.integer :project_id
      t.integer :creator_id
      t.string :name
      t.datetime :due_time
      t.text :description
      t.boolean :complete
      t.datetime :complete_at

      t.timestamps
    end
  end
end
