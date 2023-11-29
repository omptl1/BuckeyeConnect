class Presentation < ApplicationRecord
  has_many :evaluations 
  belongs_to :user
  validates :user, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
end
