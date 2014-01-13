class FriendshipsController < ApplicationController
before_action :check_session

  def create
    @friend_member = Member.find(params[:friend_id])
    @current_member.friends << @friend_member
    redirect_to user_friends_path(@current_member)
  end

  def index
    @friends = Member.find(params[:user_id]).friends #where(status=="2")
  end

  private
  def friendships_params
    params.require(:friendship).permit(:member_id, :friend_id, :status) #set which field can permit modify 
  end
end
