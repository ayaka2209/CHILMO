FactoryBot.define do
  factory :attendance_book do
    id {1}
    presence_or_absence { "出席" }
    team_id {1}
  end
end
