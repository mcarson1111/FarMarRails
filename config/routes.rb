Rails.application.routes.draw do

  root 'users#index'

  get  '/users/all_markets'  => 'users#all_markets', as: "all_markets"

  get  '/all_markets/:id'    => 'users#show', as: "single_market"

  get  '/markets'      => 'markets#market_index', as: "market"

  get  '/markets/new' => 'markets#new', as: "new_market"

  post '/markets'     => 'markets#create',  as: "create_market"

  get '/markets/created'  => 'markets#created', as: "created"

  get '/markets/:id/update'  => 'markets#update', as: "edit_market"

  patch '/markets/'  => 'markets#updated', as: "updated"

  get  '/vendors'      => 'vendors#index', as: "vendor"

  get  '/vendors/:id'  =>  'vendors#show', as: "vendor_info"

  get  '/vendors/:id/all_sales'    => 'vendors#sales', as: "vendor_sales"

  get  '/vendors/:id/all_products' => 'vendors#products', as: "vendor_products"

  get  'vendors/:id/products/new'  => 'products#new', as:  "new_product"

  get  '/vendors/:id/products/:p_id' => 'products#show', as: "product"

  post 'vendors/:id/all_products'  => 'products#create', as: "create_product"

  get    '/products/:id/edit' => 'products#edit', as: "edit_product"

  patch  'products/:id' => 'products#update', as: "update_product"

  delete 'vendors/:id/all_products/products/:p_id'  => 'products#destroy', as: "destroy_product"


  resources :sales











  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
