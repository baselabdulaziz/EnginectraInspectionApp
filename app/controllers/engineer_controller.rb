class EngineerController < ApplicationController
  def singupc
  end

  def singine
  end

  def signupe
  end

  def engdashboard
  end

  def engchecklist
  end

  def index
  end

  def inspectionform
  end

  def engprofile
  end


  


#Engineer Create Function
  def create
    engineer = Engineer.new(engineer_params) 
    if engineer.save
      session[:engineer_id] = engineer.id 
      redirect_to '/signine'
    else 
      flash[:register_errors] = engineer.errors.full_messages
      redirect_to '/signupe'
    end
end


def current_user
  @current_user ||= Engineer.find(session[:engineer_id]) if session[:engineer_id]
end 



  def edit
    @engineer = Engineer.find_by(email: engineer_params[:email])
    end



    def update
    
      @engineer = Engineer.find(session[:engineer_id]) if session[:engineer_id]
      if Engineer.new(completeprofile_params)
        @engineer.save
        redirect_to "/engdashboard"
      else 
        redirect_to "/index"
    # Handle a successful update.
    end
  
end




private 
  def engineer_params
    params.require(:engineer).permit(:email, :password, :password_confirmation)
  end






  private 
  def completeprofile_params
    params.require(:engineer).permit(:seal, :fname, :lname)
  end



  
  




end 





    


