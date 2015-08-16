class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = Staff.find_by(name: params[:session][:ime])
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
        if user.type == "Recepcija"
          redirect_to  :controller => 'reception', :action => 'index'
        elsif user.type == "Ordinacija"
          redirect_to  :controller => 'doctors', :action => 'index'
        else
        
          redirect_to root_url
        end
      else
      flash.now[:danger] = 'Pogrešno uneto ime ili lozinka'
      render 'new'

    end
  end
 
  def destroy
    log_out
    redirect_to root_url
  end
end
