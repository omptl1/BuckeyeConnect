class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :validatable
  
  has_many :presentations, dependent: :destroy
  has_many :evaluations, dependent: :destroy
  has_many :evaluations, through: :presentations
  has_many :evaluations, through: :users

end
