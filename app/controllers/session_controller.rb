# -*- coding: utf-8 -*-
class SessionController < ApplicationController

  def create
    auth = env['omniauth.auth']
    user = User.find_by_provider_and_uid(auth["provider"],auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to action: "vote"
  end

  def vote
    render text:  "こんにちは、#{session[:user_id]}さん"

  end

end
