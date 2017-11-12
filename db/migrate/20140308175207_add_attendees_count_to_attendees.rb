class AddAttendeesCountToAttendees < ActiveRecord::Migration
  def change
    add_column :attendees, :attendees_count, :integer, default: 1
  end
end
