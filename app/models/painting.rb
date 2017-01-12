class Painting < ApplicationRecord
  belongs_to :gallery
  validates :title, presence: true
  validates :artist, presence: true
end
