module UsersHelper
    def humanize_role(role)
        User.roles.key(role).humanize
    end
end
