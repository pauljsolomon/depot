class ApplicationController < ActionController::Base
  before_filter :authorize

  protect_from_forgery

  #before_filter :set_current_cart

  protected

    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_url, notice: "Please log in"
      end
    end

  private

    #def set_current_cart
    #  @cart = current_cart
    #end

    def current_cart
      Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
    end
end
