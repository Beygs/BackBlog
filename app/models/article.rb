class Article < ApplicationRecord
  validates :title, presence: :true
  validates :content, presence: :true
  validates :status, acceptance: { accept: [ "public", "private" ] }

  belongs_to :user
end
