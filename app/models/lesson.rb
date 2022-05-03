class Lesson < ApplicationRecord
  belongs_to :book
  has_many :sections
  validates :title, :content, :category, presence: true
end
