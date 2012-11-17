class CreateResCalendars < ActiveRecord::Migration
  def change
    create_table :res_calendars do |t|
      t.integer :project_id
      t.datetime :time_at
      t.integer :user_id
      t.text :message

      t.timestamps
    end
  end
end
