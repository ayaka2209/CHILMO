FactoryBot.define do
  factory :attendance_book do
    presence_or_absence { "出席" }
  end
end
