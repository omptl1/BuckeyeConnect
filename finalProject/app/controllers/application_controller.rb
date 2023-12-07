class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    # before_action :authenticate_user!
    protected
    
    def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :user_type])        
    end

    # This allows for redirection to either the student or teacher dashboard after pressing the signup button
    def after_sign_up_path_for(resource)
        if resource.user_type == 'student'
        # Redirect to the student dashboard path
        student_dashboard_path
        elsif resource.user_type == 'teacher'
        # Redirect to the teacher dashboard path
        teacher_dashboard_path
        else
        # Handle other user types or default redirection
        root_path
        end
    end

    def check_if_admin
        redirect_to(root_path) unless current_user.admin?
    end      
end
