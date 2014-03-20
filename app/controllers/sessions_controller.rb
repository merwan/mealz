class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :create

  def create
    @user = User.find_or_create_from_auth_hash(auth_hash)
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end
end
