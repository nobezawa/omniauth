class SessionController < ApplicationController

  def create
    auth = env['omniauth.auth']
    user = User.find_by_provider_and_uid(auth["provider"],auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    render json: {msg: 'login'}
  end

end
