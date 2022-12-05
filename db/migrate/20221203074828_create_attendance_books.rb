class CreateAttendanceBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :attendance_books do |t|
      t.datetime "start_time"
      t.integer "presence_or_absence"
      t.timestamps
    end
  end
end
