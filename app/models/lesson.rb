class Lesson < ApplicationRecord
  belongs_to :book
  validates :title, :content, :level, :category, presence: true
  validates :level, numericality: { only_integer: true }
end
