class User < ApplicationRecord
    has_secure_password
    has_many :evaluations
    has_many :presentations
    enum role: { student: 0, teacher: 1, team_bob_member: 2 }
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :role, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 8 }
    # to-do: add password confirmation validation
    validates :password_confirmation, presence: true
end
