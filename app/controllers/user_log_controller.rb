class UserLogController < ApplicationController
  def new
  end

  def create
    user = User.find_by(mail: params[:user_log][:mail].downcase)
    if user && user.authenticate(params[:user_log][:password])
      log_in user
      current_user
      if MainObj.find_by(user_id: @current_user.id )
        redirect_to main_obj_path, notice: 'ログインに成功しました'
      else
        redirect_to new_main_obj_path, notice: 'ログインに成功しました'
      end
    else
      render 'new', alert: 'ログインできませんでした'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
