class Presentation < ApplicationRecord
  has_many :evaluations 
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
end
