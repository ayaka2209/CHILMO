require 'rails_helper'
RSpec.describe '連絡事項機能', type: :system do
  let!(:second_user){FactoryBot.create(:second_user)}
  let!(:post){FactoryBot.create(:post, user_id: second_user.id)}
  describe '連絡事項CRUD機能' do 
    before do
      visit new_user_session_path
      fill_in "user[email]",with: 'test2@example.com'
      fill_in "user[password]",with: 'test2pass'
      click_on "commit"
    end

  context '連絡事項を入力した場合' do
    it '連絡事項が登録されている'
      visit homes_pass
      click_on "連絡"
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

#   context 'コメントするをクリックした場合' do
#     it 'コメントできる画面に飛ぶ'
#       visit
#     end
#   end
#   describe '検索機能'
#   context 'クラス名で検索した時' do
#     it '検索キーワード含むクラスで絞り込まれる' do

#     end
#   end
#   context 'ステータスを検索した場合' do
#     it 'ステータスに完全一致するものが絞り込まれる' do

#     end
#   end
  
end