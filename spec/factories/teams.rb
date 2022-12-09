FactoryBot.define do
  factory :team do
    association :kid
    association :user
    name { "team" }
    # kid { FactoryBot.create(:kid)}
    second_user { FactoryBot.create(:second_user)}
  end
end
