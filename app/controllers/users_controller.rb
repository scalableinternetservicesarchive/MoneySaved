class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update]
  before_action :logged_in_user, only: [:edit, :update, :destroy]
  before_action :admin_user, only: [:index, :destroy, :block]

  def new
    @user = User.new
    #debugger
  end
  def index
    @users = User.paginate(page: params[:page])
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
        flash[:success] = "Profile updated"
        redirect_to @user

      else
        render 'edit'
      end
  end
  def destroy
      user = User.find(params[:id])
      user.destroy
      flash[:success] = "#{user.name} has been successfully deleted"
      redirect_to allusers_path
  end
  def block 
      user = User.find(params[:id])
      if user.id == 1
        flash[:success] = "#{user.name} is admin"
        redirect_to user_path
      else
        if user.blocked
          user.update_attribute(:blocked, false)
          flash[:success] = "#{user.name} has been successfully unblocked" 
        else
            user.update_attribute(:blocked, true)
          flash[:success] = "#{user.name} has been successfully blocked" 
        end 
      redirect_to allusers_path
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

  private
  
    def user_params
      params.require(:user).permit(:name, :email, :password,
      :password_confirmation)
    end
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    
    
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

end
