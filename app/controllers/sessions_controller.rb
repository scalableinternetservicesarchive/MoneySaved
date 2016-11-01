class SessionsController < ApplicationController
  before_action :not_logged_in_user, only: [:new, :create]
  def new
  end
  
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      # 登入用户，然后重定向到用户的资料页面
      log_in @user
      params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
      redirect_back_or @user
    else
     flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
  
  private

    def not_logged_in_user
      if current_user != nil
          redirect_to current_user
        end
    end

end
