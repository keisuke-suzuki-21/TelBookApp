Rails.application.routes.draw do
  root "friends#index"

  resource :session, only:[:create, :destroy]

  resources :friends do
    get "search", on: :collection
  end
end
