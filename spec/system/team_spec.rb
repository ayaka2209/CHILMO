require 'rails_helper'
RSpec.describe '連絡事項機能', type: :system do
  let!(:second_user){FactoryBot.create(:second_user)}
  let!(:post){FactoryBot.create(:post, user: second_user)}
  describe '連絡事項CRUD機能' do 
    before do
      visit new_user_session_path
      fill_in "user[email]",with: 'test2@example.com'
      fill_in "user[password]",with: 'test2pass'
      click_on "commit"
    end