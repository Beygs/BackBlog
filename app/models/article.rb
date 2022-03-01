class Article < ApplicationRecord
  include Rails.application.routes.url_helpers

  validates :title, presence: :true
  validates :content, presence: :true
  validates :status, acceptance: { accept: [ "public", "private" ] }

  belongs_to :user
  has_many :comments

  has_one_attached :picture

  def get_picture_url
    url_for(self.picture)
  end
end
