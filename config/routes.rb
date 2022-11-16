Rails.application.routes.draw do

  # get 'restaurants/top', to: 'restaurants#top'

  resources :restaurants do
    get 'top', on: :collection
    get 'chef', on: :member

    resources :reviews, only: %i[new create]
  end

  resources :reviews, only: :destroy






  root "restaurants#index"
end
