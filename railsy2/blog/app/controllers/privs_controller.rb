class PrivsController < ApplicationController
  def index
   if logged_in? 
     @privy = Priv.where("recipent_id = ?", current_user.id)
     Priv.where("recipent_id = ?", current_user.id).update_all(read: 1)
   else
     redirect_to '/sessions/new'
   end
  end
  def show
    @priv = Priv.find(params[:id])
  end
  def destroy
    Priv.find(params[:id]).destroy
    redirect_to '/privs'
  end
end
