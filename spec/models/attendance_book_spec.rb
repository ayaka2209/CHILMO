require 'rails_helper'

RSpec.describe AttendanceBook, type: :model do
  describe '出席簿機能', type: :model do 

    describe 'バリデーションのテスト' do 
      context 'プルダウンで何も選択せずに”登録する"をクリックした場合' do 
        it 'もう一度入力して下さいと表示される' do 
          attendancebook = AttendanceBook.new(presence_or_absence: '')
          expect(attendancebook).not_to be_valid 
        end
      end 
    end
  end
end
