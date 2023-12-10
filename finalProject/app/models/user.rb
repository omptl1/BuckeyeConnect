class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, and :omniauthable

  before_validation :set_default_role

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :presentations, dependent: :destroy
  has_many :given_evaluations, class_name: 'Evaluation', foreign_key: 'user_id', dependent: :destroy
  has_many :received_evaluations, through: :presentations, source: :evaluations
  validates :email, presence: true, uniqueness: true

  def full_name
    "#{first_name} #{last_name}".strip
  end

  def student_statistics
    @students = User.where(role: '0') 
    @average_scores = calculate_average_scores
  end

  private

  def set_default_role
    self.role ||= 0
  end  
end
