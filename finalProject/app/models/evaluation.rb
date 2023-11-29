class Evaluation < ApplicationRecord
  belongs_to :presentation
  belongs_to :user
  validates :presentation_id, presence: true
  validates :user_id, presence: true
  validates :score, presence: true
  validates :score, numericality: { only_integer: true }
  validates :comments, presence: true
end
