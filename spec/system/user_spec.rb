require 'rails_helper'
RSpec.describe 'ユーザー管理機能', type: :system do
  describe 'ユーザー新規登録機能' do
    context '一般ユーザーがsign upした場合' do
      it 'homes_pathの画面に遷移することができる' do
        visit new_user_registration_path
        fill_in "user_name",with: 'test2'
        fill_in "user_email",with: 'test2@example.com'
        fill_in "user_password",with: 'test2pass'
        fill_in "user_password_confirmation",with: 'test2pass'
        click_on "アカウント登録"
        expect(page).to have_content 'ログインしました'
      end
    end 
  #   context 'ユーザーがログインせずに、出欠一覧画面に飛ぼうとした時' do
  #     it 'ログイン画面に遷移する' do
  #       visit new_user_path
  #       visit attendance_books_path
  #       expect(page).to have_content 'Email'
  #       expect(page).to have_content 'Password'
  #     end
  #   end
  # end
  # describe 'セッション機能' do
  #   before do
  #     FactoryBot.create(:user)
  #     visit new_session_path
  #     fill_in "session[email]",with: 'testhanako@icloud.com'
  #     fill_in "session[password]",with: 'password'
  #     click_on "Log in"
  #   end
  #   context 'ログインした場合' do
  #     it '詳細画面に飛ぶ' do
  #     expect(page).to have_content 'テスト花子のページ'
  #     end
  #   end
  #   context 'ログアウトした場合' do
  #     it 'ホーム画面ページに飛ぶ' do
  #       click_on "Logout"
  #       # visit new_session_path
  #       expect(page).to have_content 'ログアウトしました'
  #     end
    end
  end