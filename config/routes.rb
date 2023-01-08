Rails.application.routes.draw do
  get '/game/form', action: :new, controller: 'game'
  get '/game/play', action: :play, controller: 'game'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
