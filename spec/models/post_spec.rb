require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '連絡事項機能', type: :model do 

  describe 'バリデーションのテスト' do 
    context '日にちが空の場合' do 
      it 'エラーが発生したため送信されませんでしたと表示される' do 
        post = Post.new(start_time: '', name: '先生')
        expect(post).not_to be_valid 
      end
    end 
  end

    context '職員の名前が空の場合' do 
      it 'エラーが発生したため送信されませんでしたと表示される' do 
        post = Post.new(start_time:'2022-12-23', name:'')
        expect(post).not_to be_valid 
      end
    end

    context 'クラス名が空の場合' do 
      it 'エラーが発生したため送信されませんでしたと表示される' do 
        post = Post.new(start_time:'2022-12-23', title:'')
        expect(post).not_to be_valid 
      end
    end

    context '連絡事項が空の場合' do 
      it 'エラーが発生したため送信されませんでしたと表示される' do 
        post = Post.new(start_time:'2022-12-23', remark:'')
        expect(post).not_to be_valid 
      end
    end
  end
  describe 'postモデル機能', type: :model do
    describe '検索機能' do
      # 必要に応じて、テストデータの内容を変更して構わない
      # let!(:second_user){FactoryBot.create(:second_user)}
      let!(:post) { FactoryBot.create(:post, title: "ちゅうりっぷ", status: '完了') }
      let!(:second_post) { FactoryBot.create(:second_post, title: "ゆり", status: '未確認') }
      context 'scopeメソッドでクラス名のあいまい検索をした場合' do
        it "検索キーワードを含むクラス名が絞り込まれる" do
          # title_searchはscopeで提示したタイトル検索用メソッドである。メソッド名は任意で構わない。
          expect(Post.search_title('ちゅうりっぷ')).to include(post)
          expect(Post.search_title('ちゅうりっぷ')).not_to include(second_post)
          expect(Post.search_title('ちゅうりっぷ').count).to eq 1
        end
      end
    end
      # context 'scopeメソッドでステータス検索をした場合' do
      #   it "ステータスに完全一致するタスクが絞り込まれる" do
      #     expect(Task.search_status('着手中')).to include(task)
      #     expect(Task.search_status('着手中')).not_to include(second_task)
      #     expect(Task.search_status('着手中').count).to eq 1
      #   end
      # end
      # context 'scopeメソッドでタイトルのあいまい検索とステータス検索をした場合' do
      #   it "検索キーワードをタイトルに含み、かつステータスに完全一致するタスク絞り込まれる" do
      #     expect(Task.search_title("ask")).to include(task)
      #     expect(Task.search_status("着手中")).to include(task)
      #     expect(Task.search_title("abc")).not_to include(task)
      #     expect(Task.search_status("完了")).not_to include(task)
      #     expect(Task.search_title("task").count).to eq 1
      #     expect(Task.search_status("着手中").count).to eq 1
      #   end
      # end
  end
end
