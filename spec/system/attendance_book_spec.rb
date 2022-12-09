require 'rails_helper'
RSpec.describe '出席一覧カレンダー機能', type: :system do
  let!(:second_user){FactoryBot.create(:second_user)}
  let!(:team){FactoryBot.create(:team, kid: kid)}
  let!(:kid){FactoryBot.create(:kid, team: team)}
  describe '出席簿CRUD機能' do 
    before do
      visit new_user_session_path
      fill_in "user[email]",with: 'test2@example.com'
      fill_in "user[password]",with: 'test2pass'
      click_on "commit"
      click_on "出席一覧カレンダー"
      binding.irb
    end
    context 'プルダウンで園児の出席を選択して「登録する」をクリックすると' do
      it 'カレンダーに出欠登録が終了したクラス名が表示される' do
      visit new_attendance_book_path
      select '出席'
      click_on "commit"
      expect(page).to have_content 'team'

      # select_date '2022-12-23', from: 'post[start_time]'
      # select_time '12','00', from: 'post[start_time]'
      # fill_in 'post[start_time]', with: '002022-12-23T11:00'
      # fill_in 'post[name]', with: 'test2'
      # fill_in 'post[title]', with: 'ちゅうりっぷ'
      # fill_in 'post[remark]', with: '欠席者'
      # select '完了', from: 'post[status]'
      # click_on "commit"
      # expect(page).to have_content 'test2'
      # expect(page).to have_content 'ちゅうりっぷ'
      end
    end
  end
end