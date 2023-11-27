class Presentation < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :time, presence: true
end
