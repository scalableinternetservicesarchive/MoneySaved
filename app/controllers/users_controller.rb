class UsersController < ApplicationController
  before_action :correct_user, only: [:show]

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

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      if @user.update_attributes(user_params)
      # 处理更新成功的情况
    else
      render 'edit'
    end
  end

  ########################################
  #above is action
  ########################################
  # 如果指定的令牌和摘要匹配，返回 true
  def authenticated?(remember_token)
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end
  
  # 忘记用户
  def forget
    update_attribute(:remember_digest, nil)
  end


  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end


  private
  
    def user_params
      params.require(:user).permit(:name, :email, :password,
      :password_confirmation)
    end
  
  
end
