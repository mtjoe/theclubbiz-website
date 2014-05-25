TheclubbizWebsite::Application.routes.draw do

  post "societies/addFeedback"
  post "events/addFeedback"
  post "events/declineEvent"
  post "events/acceptEvent"
  get "events/showTicket"
  get "events/getReport"
  get "users/followSociety"
  get "users/unfollowSociety"
  get "users/followEvent"
  get "users/unfollowEvent"

  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  end

  resources :users do
    get :autocomplete_users_email, :on => :collection
  end

  resources :events do
     get :declineEvent, on: :collection
  end

  resources :events do
     get :acceptEvent, on: :collection
  end

  resources :announcements

  resources :networks

  resources :tickets

  resources :events

  resources :societies

  resources :users
  
  get "welcome/index"
  post "welcome/index"
  get "welcome/aboutUs"
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
