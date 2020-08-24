Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '', to: "pages#home"
  get 'listings', to: "listings#index"
  get 'listings/new', to: "listings#new"
  post 'listings', to: "listings#create"
  get 'listings/:id', to: "listings#show"
  get 'listings/:id/edit', to: "listings#edit"
  patch 'listings/:id/', to: "listings#update"

  get 'listings/:id/offers', to: "offers#index"
  get 'listings/:id/offers/new', to: "offers#new"
  post 'listings/:id/offers', to: "offers#create"
  delete '/listings/:id/offers/:offer_id', to: "offers#destroy"
  get '/offers/:id/edit', to: "offers#edit"
  patch '/offers/:id', to: "offers#update"
  patch 'listings/:id/offers/offer_id/accept', to: "offers#accept"
  patch 'listings/:id/offers/offer_id/decline', to: "offers#decline"

  get '/users/:id', to: "users#show"

end
