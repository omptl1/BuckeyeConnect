class Evaluation < ApplicationRecord
  belongs_to :presentation
  belongs_to :user
  validates :presentation_id, presence: true
  validates :score, presence: true
  validates :score, numericality: { less_than: 11, greater_than: 0, only_integer: true }
  validates :comments, presence: true
end
