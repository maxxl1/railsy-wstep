class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end
  def show
    @message = Message.find(params[:id])
  end
  def destroy
    Message.find(params[:id]).destroy
    redirect_to '/'
  end
  def new
    @message = Message.new
  end
  def edit
    @message = Message.find(params[:id])
  end
  def update
    @message = Message.find(params[:id])
    if @message.update_attributes(message_params) 
     redirect_to '/'
    else
     render 'edit'
    end
   end
  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to '/'
    else
      render 'new'
    end
  end
  private
  def message_params
    params.require(:message).permit(:content)
  end
end

