class Kid < ApplicationRecord
  belongs_to :team, inverse_of: :kids
  has_many :attendance_books, dependent: :destroy
end
