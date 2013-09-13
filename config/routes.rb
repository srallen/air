Air::Application.routes.draw do

  resources :users

  get 'cities' => "pages#cities"
  get "help" => 'pages#help'

  resources :flights, only: [:index]

  root 'flights#index'

end
