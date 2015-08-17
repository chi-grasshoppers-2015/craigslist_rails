Rails.application.routes.draw do
  root 'categories#index'
  get 'categories/index', as: "categories"
  get 'categories/new' => 'categories#new', as: "categories_new"
  post 'categories' => 'categories#create', as: "categories_create"
  get 'categories/:id' => 'categories#show', as: "category"
  get 'categories/:id/edit' => 'categories#edit', as: "categories_edit"
  patch 'categories/:id' => "categories#update", as: "categories_update"
  delete 'categories/:id' => 'categories#delete', as: "categories_delete"

  # get 'categories/:id/articles' => "articles#index"
  get 'articles/:id' => "articles#show", as: "article"
  get 'category/:id/articles/new' => "articles#new", as: "articles_new"
  post 'articles' => "articles#create", as: "articles_create"


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
