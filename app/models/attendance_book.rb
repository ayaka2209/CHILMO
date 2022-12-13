class AttendanceBook < ApplicationRecord
  belongs_to :kid
  scope :sort_presence_or_absence, -> {order(presence_or_absence: :ASC)}
  enum presence_or_absence: { 出席: 1, 欠席: 0 }
end
