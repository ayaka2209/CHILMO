FactoryBot.define do
  factory :kid do
    id{1}
    name { "kid1" }
    attendance_book_id {1}
  end

  factory :second_kid, class: Kid do
    id{2}
    name { "kid2" }
    attendance_book_id {2}
  end
end