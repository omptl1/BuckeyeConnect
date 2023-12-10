# app/controllers/admin_controller.rb
class AdminController < ApplicationController
    before_action :authenticate_user!
  
    def student_statistics
      @students = User.where(role: '0') 
      calculate_average_scores
    end
  
    private
  
    def calculate_average_scores
        @average_scores = {}
    
        students = User.where(role: 0)
    
        students.each do |student|
          received_evaluations = student.received_evaluations
          scores = received_evaluations.pluck(:score) # Extract scores from received_evaluations
          puts "Student: #{student.full_name}, Scores: #{scores.inspect}" # prints scores

          average_score = scores.present? ? scores.sum.to_f / scores.size : 'N/A'
          puts "Average Score for #{student.full_name}: #{average_score}"
    
          @average_scores[student.id] = average_score
          puts "id: #{student.id}: #{@average_scores[student.id]}"
        end
    end
    
      
      
      
      
      
      
      
      
      
      
      
      
      
end
 