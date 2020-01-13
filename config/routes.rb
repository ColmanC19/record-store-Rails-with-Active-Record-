Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'albums#index'
    resources :albums do
    resources :songs
    # resources :songs, except: [:destroy]    <-----------  WIll not allow users to destroy songs----->
    # resources :songs, only: [:index]      <---------  Will allow users to see Song list, but have no CRUD capability ----------->
    end
end
