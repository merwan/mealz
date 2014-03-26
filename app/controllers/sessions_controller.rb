class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :create

  def create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    session[:user_id] = @user.id
    redirect_to root_url, notice: "Logged in as #{@user.name}"
  end

  def failure
    redirect_to root_url, notice: 'Authentication failed, please try again.'
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Goodbye!'
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end
end
