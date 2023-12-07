# app/controllers/dashboards_controller.rb

class DashboardsController < ApplicationController
    before_action :authenticate_user!
  
    def student
      # Logic for the student dashboard
    end
  
    def teacher
      # Logic for the teacher dashboard
    end
  end