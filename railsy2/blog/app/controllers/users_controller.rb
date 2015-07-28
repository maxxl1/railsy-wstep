class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posty = Message.where("user_id = ?", params[:id])
  end
  def new
    @user = User.new
  end
  def priv
  end
  def new_priv
    @priv = Priv.new
    @priv.sender_id = current_user.id
    @priv.recipent_id = params[:id]
    @priv.content = params[:content][:content]
    if @priv.save
      redirect_to '/'
    else
      render 'new'
    end
  end
  def create
    @user = User.new(user_params)
    if @user.save
        user = @user     	
	log_in user
	user_id = user.id
	redirect_to user   
    else
      render 'new'
    end
  end  
  private
    def user_params
      params.require(:user).permit(:nick, :email, :password,
                                   :password_confirmation)
    end
end
