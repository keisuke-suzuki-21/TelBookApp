Rails.application.routes.draw do
  root "friends#index"

  resources :friends do
    get "search", on: :collection
  end
end
