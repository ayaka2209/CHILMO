FactoryBot.define do
  factory :team do
    name { "team1" }
  end

  factory :second_team, class: Team do
    name { "team2" }
  end
end
