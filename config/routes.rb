Facebook::Application.routes.draw do

  root :to => 'home#index'

  match "/auth/:provider/callback" => "session#create"
  match "/auth/:facebook/callback" => "session#create"
  match "vote" => "session#vote"
end
