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
        expect(page).to have_content 'アカウント登録が完了しました'
      end
    end 
    context 'ユーザーがログインせずに、連絡事項画面に飛ぼうとした時' do
      it 'ログイン画面に遷移する' do
        visit new_user_session_path
        visit posts_path
        expect(page).to have_content 'ログイン'
      end
    end
  end
  describe 'セッション機能' do
    before do
      FactoryBot.create(:second_user)
      visit new_user_session_path
      fill_in "user[email]",with: 'test2@example.com'
      fill_in "user[password]",with: 'test2pass'
      click_on "commit"
    end
    context 'ログインした場合' do
      it 'homes_pathの画面に飛ぶ' do
      expect(page).to have_content 'ログインしました'
      end
    end
    context 'ログアウトした場合' do
      it 'ログアウトすることができる' do
        click_on "ログアウト"
        # visit new_session_path
        expect(page).to have_content 'ログアウトしました'
      end
    end
  end
end