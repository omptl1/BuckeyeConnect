class User < ApplicationRecord
    has_secure_password
    enum role: { student: 0, teacher: 1, team_bob_member: 2 }
end
