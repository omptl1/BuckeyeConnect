class PresentationsController < ApplicationController
  # before_action :set_presentation, only: %i[ show edit update destroy ]

  # user_email = session[:user_email]

  # GET /presentations/student_dashboard
  def student_dashboard
    authenticate_user!
    @presentations = Presentation.where(user_email: current_user.email)
  end

  def show
    # Find the presentation by title instead of ID
    @presentation = Presentation.find_by(user_email: params[:id])
  end

  def index
    @presentations = Presentation.all
  end
  
  def new
    @presentation = Presentation.new
  end

  # GET /presentations/1/edit
  def edit
  end

  # POST /presentations or /presentations.json
  def create
    # Find the user by email
    user = User.find_by(email: params[:presentation][:user_email])
  
    # Check if the user was found
    if user.present?
      # Associate the presentation with the found user
      @presentation = user.presentations.new(presentation_params)
  
      respond_to do |format|
        if @presentation.save
          format.html { redirect_to presentation_url(@presentation), notice: "Presentation was successfully created." }
          format.json { render :show, status: :created, location: @presentation }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @presentation.errors, status: :unprocessable_entity }
        end
      end
    else
      # Handle the case when the user is not found
      respond_to do |format|
        format.html { redirect_to presentations_url, alert: "User with email #{params[:presentation][:user_email]} not found." }
        format.json { render json: { error: "User not found" }, status: :unprocessable_entity }
      end
    end
  end
  


  # PATCH/PUT /presentations/1 or /presentations/1.json
  def update
    respond_to do |format|
      if @presentation.update(presentation_params)
        format.html { redirect_to presentation_url(@presentation), notice: "Presentation was successfully updated." }
        format.json { render :show, status: :ok, location: @presentation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @presentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presentations/1 or /presentations/1.json
  def destroy
    @presentation.destroy

    respond_to do |format|
      format.html { redirect_to presentations_url, notice: "Presentation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions. (may be unnecessary)
    # def set_presentation
    #   @presentation = Presentation.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def presentation_params
      params.require(:presentation).permit(:title, :description, :date, :user_email)
    end
    

    attr_accessor :title, :description, :date, :user_email
end
