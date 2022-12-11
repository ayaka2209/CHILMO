FactoryBot.define do
  factory :post do
    # association :user
    start_time { "2022-12-23 11:00" }
    title { "ちゅうりっぷ" }
    remark { "欠席者" }
    name { "test2" }
    status { "完了" }
    user_id {2}
  end

  factory :second_post, class: Post do
    # association :second_user
    start_time { "2022-12-23 11:00" }
    title { "ゆり" }
    remark { "欠席者" }
    name { "test2" }
    status { "未確認" }
    user_id {2}
  end
end