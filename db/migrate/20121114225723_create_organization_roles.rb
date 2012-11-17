class CreateOrganizationRoles < ActiveRecord::Migration
  def change
    create_table :organization_roles do |t|
      t.string :name
      t.string :identifier

      t.timestamps
    end
  end
end
