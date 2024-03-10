Rails.application.routes.draw do
  get '/orders/new', to: 'orders#new', as: 'new_order'
  post '/orders', to: 'orders#create', as: 'orders'

  # Routes for kitchen display system
  get '/kitchen_display', to: 'kitchen_display#index', as: 'kitchen_display'
  post '/kitchen_display/mark_prepared/:order_item_id', to: 'kitchen_display#mark_prepared', as: 'mark_prepared'

  # Route for displaying orders ready for pickup
  get '/pickup', to: 'orders#pickup', as: 'pickup'
  patch '/orders/:id/mark_paid', to: 'orders#mark_paid', as: 'mark_paid'
  resources :completion, only: [:index] do
    patch 'mark_paid/:id', action: :mark_paid, as: :mark_paid
  end
  get '/dashboard', to: 'dashboard#index', as: 'dashboard'

  root 'dashboard#index'
end
