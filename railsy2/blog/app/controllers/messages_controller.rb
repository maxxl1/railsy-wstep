class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end
  def destroy
    Message.find(params[:id]).destroy
    redirect_to '/'
  end
  def new
    @message = Message.new
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

