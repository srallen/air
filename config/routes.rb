Air::Application.routes.draw do

  get 'cities' => "pages#cities"
  get "help" => 'pages#help'

  resources :flights, only: [:index, :show]
  root 'flights#index'

end
