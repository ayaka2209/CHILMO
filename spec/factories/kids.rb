FactoryBot.define do
  factory :kid do
    name { "kid1" }
  end

  factory :second_kid, class: Kid do
    name { "kid2" }
  end
end