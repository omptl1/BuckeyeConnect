class Presentation < ApplicationRecord
  has_many :evaluations, dependent: :destroy
  belongs_to :user, foreign_key: 'user_email', primary_key: 'email'  
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
end
