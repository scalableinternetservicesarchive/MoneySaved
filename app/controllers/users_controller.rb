class UsersController < ApplicationController
  def new
    @user = User.new
    #debugger
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to MoneySaved!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  # 如果指定的令牌和摘要匹配，返回 true
  def authenticated?(remember_token)
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end
  
  # 忘记用户
  def forget
    update_attribute(:remember_digest, nil)
  end
  

  private
  
    def user_params
      params.require(:user).permit(:name, :email, :password,
      :password_confirmation)
    end
  
  
end
