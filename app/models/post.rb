class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  scope :search_title_and_status, -> (title, status){where("title LIKE?", "%#{title}%").where(status:status)}
	scope :search_title, -> (title){where("title LIKE?", "%#{title}%")}
  scope :search_status, -> (status){where(status:status)}
  enum status: { 未確認: 0, 確認済: 1, 完了:2 }
end
