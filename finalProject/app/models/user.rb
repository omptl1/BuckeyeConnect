class User < ApplicationRecord
    has_secure_password
    enum role: { student: 0, teacher: 1, team_bob_member: 2 }
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :role, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 8 }
    validates :password_confirmation, presence: true
end
