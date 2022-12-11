class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true, length: { maximum: 10 }
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
    user.name ="ゲスト"
    user.password = SecureRandom.urlsafe_base64
    user.role = true
    end
  end

  def self.admin_guest
    find_or_create_by!(email: 'admin_guest@example.com') do |user|
    user.name ="管理者ゲスト"
    user.password = SecureRandom.urlsafe_base64
    user.admin = true
    user.role = true
    end
  end

  has_many :comments
  has_many :posts
end
