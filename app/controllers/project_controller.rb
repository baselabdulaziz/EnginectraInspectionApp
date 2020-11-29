class ProjectController < ApplicationController 

#Project Create Function
  def create
    project = Project.new(project_params.merge({customer_id: current_user.id}.merge({engineer_id: default_engineer.id}))) 
    if project.save  
      session[:project_id] = project.id
      redirect_to '/custdashboard'
    else 
      flash[:register_errors] = project.errors.full_messages
      redirect_to '/inspectionform'
    end
  end

  private 
    def project_params
      params.require(:project).permit(:Inspec_name, :Inspec_address, :Elect_name, :Elect_address,
      :Elect_email, :fp_name, :Fp_representative, :fp_address, :fp_email, :Project_scope, :Project_number)
    end

  private
    def current_user
      @current_user ||= Customer.find(session[:customer_id]) if session[:customer_id]
    end

  private
    def default_engineer
      @default_engineer||= Engineer.find(1)
    end
end 

    


