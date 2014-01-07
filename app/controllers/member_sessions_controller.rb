class MemberSessionsController < ApplicationController
	def create
		if @member = Member.confirm(params[:email], params[:password])
          session[:member_id] = @member.id
			   redirect_to products_path
      else
          flash[:errror_msg] = "fail"
          redirect_to root_path
		end
	end

  def destroy
    session[:member_id] = nil
    redirect_to root_path
  end

end
