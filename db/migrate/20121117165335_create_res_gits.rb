class CreateResGits < ActiveRecord::Migration
  def change
    create_table :res_gits do |t|
      t.integer :project_id
      t.string :url
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
