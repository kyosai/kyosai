class CreateResHistories < ActiveRecord::Migration
  def change
    create_table :res_histories do |t|
      t.integer :resourceable_id
      t.string :resourceable_type
      t.integer :user_id
      t.string :action
      t.string :description

      t.timestamps
    end
  end
end
