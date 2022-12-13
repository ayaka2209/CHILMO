FactoryBot.define do
  factory :attendance_book do
    id {1}
    presence_or_absence { "出席" }
    team_id {1}
    kid_id {1}
  end
  factory :second_attendance_book, class: AttendanceBook do
    id {2}
    presence_or_absence { "欠席" }
    team_id {1}
    kid_id {2}
  end
end
