class UserLogController < ApplicationController
  def new
  end

  def create
    user = User.find_by(mail: params[:user_log][:mail].downcase)
    if user && user.authenticate(params[:user_log][:password])
      log_in user
      redirect_to main_obj_path(id: Main_obj.find_by(user_id: user.id)), notice: 'ログインに成功しました'
    else
      render 'new', alert: 'ログインできませんでした'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
