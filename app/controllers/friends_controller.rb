class FriendsController < ApplicationController
  before_action :check_session

  def create
    @friend = Friend.new(friend_params)
    if(@friend.save)
      flash[:msg] = "send invitation"
    else
      flash[:msg] = "somthings"
    end
    redirect_to :action => :search
  end

  def index
    @emails = Friend.find_by_email(params[:id])
    @members = Member.find_by_email(@emails)
  end

  def search
    if(params[:search])
      @members = Member.find_by_email(@emails)
    else
      @members = Member.all
    end
  end

  private
  def friend_params
    params.require(:friend).permit(:email, :femail, :status) #set which field can permit modify 
  end
end
