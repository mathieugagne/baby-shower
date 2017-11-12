class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :name
      t.string :email
      t.boolean :attending

      t.timestamps
    end
  end
end
