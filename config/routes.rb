Air::Application.routes.draw do

  resources :users, except: [:index]

  get 'cities' => "pages#cities"
  get "help" => 'pages#help'

  resources :flights, only: [:index]

  root 'flights#index'

  get 'sessions/new' => 'sessions#new', as: "new_session"

end
