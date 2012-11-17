class SetCommentAsPolymorphicTable < ActiveRecord::Migration
  def up
    add_column :res_comments , :resourceable_type , :string
    add_column :res_comments , :resourceable_id , :integer
  end

  def down
    remove_column :res_comments , :resourceable_type
    remove_column :res_comments , :resourceable_id
  end
end
