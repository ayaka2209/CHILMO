class AddKidRefToAttendanceBooks < ActiveRecord::Migration[6.1]
  def change
    add_reference :attendance_books, :kid, null: false, foreign_key: true
  end
end
