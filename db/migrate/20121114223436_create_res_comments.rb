class CreateResComments < ActiveRecord::Migration
  def change
    create_table :res_comments do |t|
      t.integer :res_id
      t.string :res_identifier
      t.text :message
      t.integer :reply_to
      t.integer :user_id

      t.timestamps
    end
  end
end
