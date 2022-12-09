require 'rails_helper'
RSpec.describe '連絡事項機能', type: :system do
  let!(:admin_user){FactoryBot.create(:admin_user)}
  let!(:post){FactoryBot.create(:post)}
  describe '連絡事項CRUD機能' do 
    before do
      visit new_user_session_path
      fill_in "user[email]",with: 'admin@example.com'
      fill_in "user[password]",with: 'adminpass'
      click_on "commit"
    end

    context '連絡事項を入力した場合' do
      it '連絡事項が登録されている' do
      visit new_post_path
      # click_on "連絡"
      # select_date '2022-12-23', from: 'post[start_time]'
      # select_time '12','00', from: 'post[start_time]'
      fill_in 'post[start_time]', with: '002022-12-23T11:00'
      fill_in 'post[name]', with: 'test2'
      fill_in 'post[title]', with: 'ちゅうりっぷ'
      fill_in 'post[remark]', with: '欠席者'
      select '完了', from: 'post[status]'
      click_on "commit"
      expect(page).to have_content 'test2'
      expect(page).to have_content 'ちゅうりっぷ'
      end
    end

    context '「ステータスを変更」クリックすると' do
      it '連絡事項を編集できるページに遷移する' do
      visit posts_path
      click_on "ステータスを変更"
      expect(page).to have_content 'ステータス変更'
      end
    end
    context '「コメントする」クリックすると' do
      it 'コメントできるページに遷移する' do
      visit posts_path
      click_on "コメントする"
      expect(page).to have_content 'コメント一覧'
      end
    end
    describe 'コメント入力機能'
    before do
    visit posts_path
    end
    context 'コメントを入力すると' do
      it '入力したコメントが反映される' do
      click_on "コメントする"
      fill_in 'comment[content]', with: 'test'
      click_on "commit"
      expect(page).to have_content 'test'
      end
    end
  end
  describe 'アクセス制限' do 
    before do 
      visit new_user_session_path
      fill_in "user[email]",with: 'test@gmail.com'
      fill_in "user[password]",with: 'testpass'
      click_on 'commit'
    end
    context 'メニューバーの「連絡」をクリックすると' do
      it '申し訳ありません。職員のみアクセスできるページになっていますと表示される' do
      click_on '連絡'
      expect(page).to have_content '申し訳ありません。職員のみアクセスできるページになっています'
      end
    end
  end
end