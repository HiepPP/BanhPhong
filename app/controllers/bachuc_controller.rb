class BachucController < ApplicationController
  def login
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if Digest::MD5.hexdigest(params[:passcode][:title])  != "09dbf240d5c708bc164b831958d6ffec"
      # return redirect_to url_for(:controller => :home, :action => :index)
      return redirect_to :controller => 'home', :action => 'index'
    end
    if @user.save
      redirect_to :action => "login"
    else
      flash[:message] = "Nope!"
      redirect_to :action => :new
    end
  end
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
