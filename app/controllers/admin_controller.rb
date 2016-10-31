class AdminController < ApplicationController
 

  def index
  	
  end
  def show
  	
  end
  def usersindex
  	@users = User.paginate(:page => params[:page],:per_page => 30)
  end
   
end
