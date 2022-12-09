FactoryBot.define do
  factory :kid do
    name { "kid1" }
    team_id{1}
    user_id{2}
  end

  factory :second_kid, class: Kid do
    name { "kid2" }
  end
end