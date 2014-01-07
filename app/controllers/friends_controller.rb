class FriendsController < ApplicationController
  before_action :check_session

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
end
