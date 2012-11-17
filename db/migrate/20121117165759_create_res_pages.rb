class CreateResPages < ActiveRecord::Migration
  def change
    create_table :res_pages do |t|
      t.integer :project_id
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
