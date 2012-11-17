class CreateResTodoLists < ActiveRecord::Migration
  def change
    create_table :res_todo_lists do |t|
      t.integer :project_id
      t.integer :due_time
      t.string :title
      t.text :message
      t.integer :user_id

      t.timestamps
    end
  end
end
