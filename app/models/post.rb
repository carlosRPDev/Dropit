class Post < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: :slugged
  belongs_to :user
  has_one_attached :file
  has_many :comments

  validates :title, presence: true,
                    length: { minimum: 5 }
end
