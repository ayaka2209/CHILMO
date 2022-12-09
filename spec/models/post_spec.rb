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
end
