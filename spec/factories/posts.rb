FactoryBot.define do
  factory :post do
    association :user
    start_time { "2022-12-23 11:00" }
    title { "ちゅうりっぷ" }
    remark { "欠席者" }
    name { "test2" }
    status { "完了" }
  end
end