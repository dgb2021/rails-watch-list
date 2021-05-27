class Movie < ApplicationRecord
  has_many :lists
  has_many :bookmarks
  validates :title, uniqueness: true
  validates :title, :overview, presence: true
end
