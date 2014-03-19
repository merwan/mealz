class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :create

  def create
    render text: request.env['omniauth.auth']
  end
end
