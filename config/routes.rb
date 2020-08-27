Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '', to: "pages#home"
  get 'listings', to: "listings#index"
  get 'listings/new', to: "listings#new", as: "new_listing"
  post 'listings', to: "listings#create"
  get 'listings/:id', to: "listings#show", as: "listing"
  get 'listings/:id/edit', to: "listings#edit"
  patch 'listings/:id/', to: "listings#update"
  delete 'listings/:id', to: "listings#destroy", as: "listing_delete"

  get 'listings/:id/offers', to: "listings#show_offers", as: "listing_offers"
  get 'users/:id/offers', to: "users#show_offers", as: "user_offers"
  get 'users/:id/listings', to: "users#show_listings", as: "user_listings"
  get 'listings/:id/offers/new', to: "offers#new", as: "make_offer"
  post 'listings/:id/offers', to: "offers#create", as: "create_offer"
  delete '/listings/:id/offers/:offer_id', to: "offers#destroy"
  get '/offers/:id/edit', to: "offers#edit"
  patch '/offers/:id', to: "offers#update"
  patch 'listings/:id/offers/:offer_id/accept', to: "offers#accept", as: "offer_accept"
  patch 'listings/:id/offers/:offer_id/decline', to: "offers#decline", as: "offer_decline"

  get '/users/:id', to: "users#show", as: "profile"
  get '/users/:id/edit', to: "users#show", as: "profile_edit"
end
