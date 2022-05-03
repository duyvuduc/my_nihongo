class Book < ApplicationRecord
  has_many :lessons
  validates :title, :level, presence: true
  validates :level, numericality: { only_integer: true }
end
