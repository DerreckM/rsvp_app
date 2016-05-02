class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :uid
      t.string :name
      t.string :message
      t.timestamps null: false
    end
  end
end
