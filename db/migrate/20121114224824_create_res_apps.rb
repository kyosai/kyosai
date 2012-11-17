class CreateResApps < ActiveRecord::Migration
  def change
    create_table :res_apps do |t|
      t.string :name
      t.string :identifier
      t.boolean :third_party

      t.timestamps
    end
  end
end
