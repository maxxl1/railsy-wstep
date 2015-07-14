class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(nick: params[:session][:nick].downcase)
    if user && user.authenticate(params[:session][:password])
	log_in user
	user_id = user.id
	redirect_to user    
else
flash[:danger] = 'Invalid email/password combination'      
	render 'new'
    end
  end
  def destroy
    log_out
    redirect_to '/'
  end
end
