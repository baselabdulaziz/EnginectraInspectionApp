class AuthenticationController < ApplicationController
  def singupc
  end

  def custdashboard
  end

  def custchecklist
  end

  def index
  end

  def inspectionform
  end

  #Customer Create Function
  def create
    customer = Customer.new(customer_params) 
    if customer.save
      session[:customer_id] = customer.id 
      redirect_to '/inspectionform'
    else 
      flash[:register_errors] = customer.errors.full_messages
      redirect_to '/signupc'
    end
  end

  private 
  def customer_params
    params.require(:customer).permit(:email, :password, :password_confirmation)
  end
end 

    


