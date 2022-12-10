# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(
  name: " 小林",
  email: "kobayashi@test.com",
  password: "password",
  role: "true"
)

user2 = User.create!(
  name: "井関",
  email: "iseki@test.com",
  password: "password",
  role: "true"
)

user3 = User.create!(
  name: "山田",
  email: "yamada@example.com",
  password: "password",
  role: "true"
)

user4 = User.create!(
  name: "test1",
  email: "test1@example.com",
  password: "test1pass",
  role: "false"
)

user5 = User.create!(
  name: "test2",
  email: "test2@example.com",
  password: "test2pass",
  role: "false"
)

team1 = Team.create!(
  name: "ちゅうりっぷ",
)
team2 = Team.create!(
  name: "ゆり",
)
team3 = Team.create!(
  name: "つぼみ",
)
team4 = Team.create!(
  name: "こすもす",
)
team5 = Team.create!(
  name: "たんぽぽ",
)

kid1 = Kid.create!(
  name: "熊木かなみ",
  team_id: team1.id
)

kid2 = Kid.create!(
  name: "田中そら",
  team_id: team1.id
)

kid3 = Kid.create!(
  name: "俵やすひろ",
  team_id: team1.id
)

kid4 = Kid.create!(
  name: "中島あすみ",
  team_id: team1.id
)

kid5 = Kid.create!(
  name: "橋本はるふみ",
  team_id: team1.id
)

kid6 = Kid.create!(
  name: "松渕ともき",
  team_id: team1.id
)

kid7 = Kid.create!(
  name: "鈴木たかや",
  team_id: team1.id
)

kid8 = Kid.create!(
  name: "戎井しょう",
  team_id: team1.id
)

kid9 = Kid.create!(
  name: "宮里たかし",
  team_id: team1.id
)

kid10 = Kid.create!(
  name: "上ノ山りか",
  team_id: team1.id
)
kid11 = Kid.create!(
  name: "井出しょう",
  team_id: team2.id
)
kid12 = Kid.create!(
  name: "山本ひでみ",
  team_id: team2.id
)
kid13 = Kid.create!(
  name: "亀井さやか",
  team_id: team2.id
)
kid14 = Kid.create!(
  name: "バーゴルツえいみ",
  team_id: team2.id
)
kid15 = Kid.create!(
  name: "池田ゆきひろ",
  team_id: team2.id
)
kid16 = Kid.create!(
  name: "菊池しょうた",
  team_id: team2.id
)
kid17 = Kid.create!(
  name: "石井ゆか",
  team_id: team2.id
)
kid18 = Kid.create!(
  name: "大島あきあさ",
  team_id: team2.id
)
kid19 = Kid.create!(
  name: "山石たまき",
  team_id: team2.id
)

              Post.create!(
              start_time: "2022-12-22",
              remark: "鈴木たかやくん14時に早お迎えとの事",
              name: "小林",
              title: "ちゅうりっぷ",
              status: "未確認",
              user_id: user1.id
              )

              Post.create!(
              start_time: "2022-12-22",
              remark: "菊池しょうたくん病院行くため遅刻",
              name: "井関",
              title: "ゆり",
              status: "未確認",
              user_id: user2.id
              )

              Post.create!(
              start_time: "2022-12-23",
              remark: "遠矢あずちゃん発熱の為欠席との事。電話有り",
              name: "山田",
              title: "つぼみ",
              status: "未確認",
              user_id: user3.id
              )

              Post.create!(
              start_time: "2022-12-23",
              remark: "俵やすひろくんお昼にお薬飲ませて欲しいと連絡有",
              name: "小林",
              title: "ちゅうりっぷ",
              status: "未確認",
              user_id: user1.id
              )

              Post.create!(
              start_time: "2022-12-23",
              remark: "石井ゆかちゃん今日はバス乗らないとのこと",
              name: "井関",
              title: "ゆり",
              status: "完了",
              user_id: user2.id
              )

              AttendanceBook.create!(
              start_time: "2022-12-23",
              presence_or_absence: "出席",
              kid_id: kid1.id
              )

              AttendanceBook.create!(
              start_time: "2022-12-23",
              presence_or_absence: "出席",
              kid_id: kid2.id
              )

              AttendanceBook.create!(
              start_time: "2022-12-23",
              presence_or_absence: "出席",
              kid_id: kid3.id
              )

              AttendanceBook.create!(
              start_time: "2022-12-23",
              presence_or_absence: "欠席",
              kid_id: kid11.id
              )

              AttendanceBook.create!(
              start_time: "2022-12-23",
              presence_or_absence: "欠席",
              kid_id: kid12.id
              )