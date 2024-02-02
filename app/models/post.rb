class Post < ApplicationRecord
  belongs_to :forum

  validates :title, presence: true
  validates :content, presence: true
  validates :forum, presence: true
  validates :img_url, presence: true
  validates :img_url, format: {with: URI.regexp}, if: 'img_url.present?'
end
