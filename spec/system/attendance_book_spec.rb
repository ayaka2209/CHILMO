require 'rails_helper'
RSpec.describe '出席一覧カレンダー機能', type: :system do
  let!(:second_user){FactoryBot.create(:second_user)}
  let!(:user){FactoryBot.create(:user)}
  describe '出席簿CRUD機能' do 
    before do
      visit new_user_session_path
      fill_in "user[email]",with: 'test2@example.com'
      fill_in "user[password]",with: 'test2pass'
      click_on "commit"
      click_on "クラス一覧"
      click_on "クラスの追加"
      fill_in 'team[name]', with: 'team'
      fill_in 'team[kids_attributes][0][name]', with: 'kid1'
      click_on "登録"
      click_on "出席一覧カレンダー"
    end
    context 'プルダウンで園児の出席を選択して「登録する」をクリックすると' do
      it 'カレンダーに出欠登録が終了したクラス名が表示される' do
      click_on "・team"
      select '出席'
      click_on "commit"
      expect(page).to have_content 'team'
      end
    end
    context 'カレンダーに表示されているクラス名をクリックすると' do
      it 'そのクラスに所属している園児名と出欠内容が表示される' do
      click_on "・team"
      select '出席'
      click_on "commit"
      click_on "team"
      expect(page).to have_content 'kid1'
      expect(page).to have_content '出席'
      end
    end
  end
  describe 'アクセス制限' do 
    before do
      visit new_user_session_path
      fill_in "user[email]",with: 'test2@example.com'
      fill_in "user[password]",with: 'test2pass'
      click_on "commit"
      click_on "クラス一覧"
      click_on "クラスの追加"
      fill_in 'team[name]', with: 'team'
      fill_in 'team[kids_attributes][0][name]', with: 'kid1'
      click_on "登録"
      click_on "ログアウト"
      visit new_user_session_path
      fill_in "user[email]",with: 'test@gmail.com'
      fill_in "user[password]",with: 'testpass'
      click_on 'commit'
      click_on "出席一覧カレンダー"
    end
    context 'メニューバーの「」をクリックすると' do
      it '申し訳ありません。職員のみアクセスできるページになっていますと表示される' do
      click_on "・team"
      expect(page).to have_content '申し訳ありません。職員のみアクセスできるページになっています'
      end
    end
  end
end