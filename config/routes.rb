Rails.application.routes.draw do



  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :authors

  resources :articles do
    resources :comments
  end

  resources :author_sessions, only: [ :new, :create, :destroy ]
  resources :subscribers

  get 'author_sessions'  => 'author_sessions#create' # log - in
  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'

  # post 'create_author_subscriber' => 'subscribers#create_author_subscriber'
  get 'create_author_subscriber' => 'subscribers#create_author_subscriber'
  get 'unsubscribe' => 'subscribers#unsubscribe'


  get 'welcome'  => 'welcome#index'
  get 'welcome/register'
  get 'welcome/sign_in'
  get 'welcome/sign_out'
  get 'welcome/subscribe'
  get 'welcome/see_articles'

  get 'articles/index'
  get 'tags/:tag', to: 'articles#index', as: :tag
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Root
  ##################################################
  root to:  'welcome#index'



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
