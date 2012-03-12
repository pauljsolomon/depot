class SessionsController < ApplicationController
  def new
    @cart = current_cart
  end

  def create
    @cart = current_cart
    user = User.find_by_name(params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    @cart = current_cart
    session[:user_id] = nil
    redirect_to store_url, notice: "Logged out"
  end

end
