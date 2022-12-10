# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "テスト",
              email: "test@test.com",
              password: "password",
              role: "true"
              )

              User.create!(name: "アイウエオ",
              email: "test@aiueo.com",
              password: "aiueoa",
              role: "false"
              )

              User.create!(name: "test1",
              email: "test1@.example.com",
              password: "test1pass",
              role: "false"
              )

              User.create!(name: "test2",
              email: "test2@.example.com",
              password: "test2pass",
              role: "false"
              )

              User.create!(name: "test3",
              email: "test3@.example.com",
              password: "test3pass",
              role: "false"
              )

              Kid.create!(name: "熊木かなみ",
              team_id: team1.id
              )

              Kid.create!(name: "田中そら",
              team_id: fam1.id
              )

              Kid.create!(name: "俵やすひろ",
              team_id: fam1.id
              )

              Kid.create!(name: "中島あすみ",
              team_id: fam1.id
              )

              Kid.create!(name: "橋本はるふみ",
              team_id: fam1.id
              )

              Kid.create!(name: "松渕ともき",
              team_id: fam1.id
              )

              Kid.create!(name: "鈴木たかや",
              team_id: fam1.id
              )

              Kid.create!(name: "戎井しょう",
              team_id: fam1.id
              )

              Kid.create!(name: "宮里たかし",
              team_id: team1.id
              )

              Kid.create!(name: "上ノ山りか",
              team_id: team1.id
              )
              Kid.create!(name: "井出しょう",
              team_id: team2.id
              )
              Kid.create!(name: "山本ひでみ",
              team_id: team2.id
              )
              Kid.create!(name: "亀井さやか",
              team_id: team2.id
              )
              Kid.create!(name: "バーゴルツえいみ",
              team_id: team2.id
              )
              Kid.create!(name: "池田ゆきひろ",
              team_id: team2.id
              )
              Kid.create!(name: "菊池しょうた",
              team_id: team2.id
              )
              Kid.create!(name: "石井ゆか",
              team_id: team2.id
              )
              Kid.create!(name: "大島あきあさ",
              team_id: team2.id
              )
              Kid.create!(name: "山石たまき",
              team_id: team2.id
              )

              team1 = Team.create!(
                name: "ちゅうりっぷ",
              )
              team2 = Team.create!(
                name: "ゆり",
              )
              team3 = Team.create!
              (name: "つぼみ",
              )
              Team.create!(name: "こすもす",
              )
              Team.create!(name: "たんぽぽ",
              )

              Post.create!(
              start_time: "2022-12-23",
              remark: "早お迎えとの事",
              name: "小林",
              title: "ちゅうりっぷ",
              status: "未確認",
              user_id: user2.id
              )

              Post.create!(
              start_time: "2022-12-23",
              remark: "病院行くため遅刻",
              name: "井関",
              title: "ゆり",
              status: "未確認",
              user_id: user2.id
              )

              Post.create!(
              start_time: "2022-12-23",
              remark: "発熱の為欠席との事。電話有り",
              name: "山田",
              title: "つぼみ",
              status: "未確認",
              user_id: user2.id
              )

              Post.create!(
              start_time: "2022-12-23",
              remark: "お昼にお薬飲ませて欲しいと連絡有",
              name: "小林",
              title: "ちゅうりっぷ",
              status: "未確認",
              user_id: user2.id
              )

              Post.create!(
              start_time: "2022-12-23",
              remark: "今日はバス乗らないとのこと",
              name: "井関",
              title: "ゆり",
              status: "完了",
              user_id: user2.id
              )

              AttendanceBook.create!(
              start_time: "2022-12-23",
              presence_or_absence: "出席",
              kid_id: user2.id
              )

              AttendanceBook.create!(
              start_time: "2022-12-23",
              presence_or_absence: "出席",
              kid_id: user2.id
              )

              AttendanceBook.create!(
              start_time: "2022-12-23",
              presence_or_absence: "出席",
              kid_id: user2.id
              )

              AttendanceBook.create!(
              start_time: "2022-12-23",
              presence_or_absence: "欠席",
              kid_id: user2.id
              )

              AttendanceBook.create!(
              start_time: "2022-12-23",
              presence_or_absence: "欠席",
              kid_id: user2.id
              )