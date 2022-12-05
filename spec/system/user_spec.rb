require 'rails_helper'
RSpec.describe 'ユーザー管理機能', type: :system do
  describe 'ユーザー新規登録機能' do
    context '一般ユーザーがsign upした場合' do
      it '作成したユーザーが表示される' do
        visit new_user_path
        fill_in "user[name]",with: 'テスト花子'
        fill_in "user[email]",with: 'testhanako@icloud.com'
        fill_in "user[password]",with: 'password'
        fill_in "user[password_confirmation]",with: 'password'
        click_on "Create my account"
        expect(page).to have_content 'テスト花子'
      end
    end 
    context 'ユーザーがログインせずに、出欠一覧画面に飛ぼうとした時' do
      it 'ログイン画面に遷移する' do
        visit new_user_path
        visit attendance_books_path
        expect(page).to have_content 'Email'
        expect(page).to have_content 'Password'
      end
    end
  end
  describe 'セッション機能' do
    before do
      FactoryBot.create(:user)
      visit new_session_path
      fill_in "session[email]",with: 'testhanako@icloud.com'
      fill_in "session[password]",with: 'password'
      click_on "Log in"
    end
    context 'ログインした場合' do
      it '詳細画面に飛ぶ' do
      expect(page).to have_content 'テスト花子のページ'
      end
    end
    context 'ログアウトした場合' do
      it 'ホーム画面ページに飛ぶ' do
        click_on "Logout"
        # visit new_session_path
        expect(page).to have_content 'ログアウトしました'
      end
    end
  end