class Book < ApplicationRecord
  belongs_to :user
  validates :title, :body, presence: true, length: { in: 1..200 } #5文字から10文字以内であるか
end
