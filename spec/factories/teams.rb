FactoryBot.define do
  factory :team do
    # association :kid
    name { "team" }
    association :user
    # kid_id {1}
    # second_user { FactoryBot.create(:second_user)}
  end
end
