Rails.application.routes.draw do
  resources :visits
  resources :shortest_paths do
    member do
      get 'detail'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  root :controller => "sessions", :action => "new"
  get 'sessions/new'

  match ':id', :controller => 'shortest_paths', :action => 'show', via: [:get]

  resources :users
  resource :session, only: %i[new create destroy]


end
