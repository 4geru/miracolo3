class UserLogController < ApplicationController
  def new
  end

  def create
    user = User.find_by(mail: params[:user_log][:mail].downcase)
    if user && user.authenticate(params[:user_log][:password])
      log_in user
      redirect_to user
    else
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
