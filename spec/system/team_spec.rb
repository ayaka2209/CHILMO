require 'rails_helper'
RSpec.describe 'クラス一覧機能', type: :system do
  let!(:second_user){FactoryBot.create(:second_user)}
  describe 'クラス一覧CRUD機能' do 
    before do
      visit new_user_session_path
      fill_in "user[email]",with: 'test2@example.com'
      fill_in "user[password]",with: 'test2pass'
      click_on "commit"
    end

    context '「クラスの追加」をクリックすると' do
      it 'クラス名と園児名を追加することができる' do
        visit new_team_path
        fill_in 'team[name]', with: 'team'
        # binding.irb
        fill_in 'team[kids_attributes][0][name]', with: 'kid1'
        click_on "登録"
        expect(page).to have_content '登録しました'
      end
    end
    context '「編集」をクリックすると' do
      it '園児名を追加することができる' do
        visit new_team_path
        fill_in 'team[name]', with: 'team'
        fill_in 'team[kids_attributes][0][name]', with: 'kid1'
        click_on "登録"
        save_and_open_page
        click_on "編集"
        fill_in 'team[kids_attributes][1][name]', with: 'kid2'
        click_on "登録"
        sleep(1)
        expect(page).to have_content '編集しました。'
      end
    end
    context '「クラスの削除」をクリックすると' do
      it 'そのクラス名が一覧から削除されている' do
        visit new_team_path
        fill_in 'team[name]', with: 'team'
        fill_in 'team[kids_attributes][0][name]', with: 'kid1'
        click_on "登録"
        save_and_open_page
        click_on "クラスの削除"
        page.accept_alert
        expect(page).to have_content '削除しました。'
      end
    end
  end
end