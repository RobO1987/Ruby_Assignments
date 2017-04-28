Rails.application.routes.draw do

  ### STUDENT CONTROLLER ROUTES ###
  get 'student/index'
  get 'student/new/:id' => 'student#new'
  get 'student/show'
  get 'student/edit'
  get 'student/destroy'

  ### STUDENT POST ROUTES ###
  post 'student/create'
resources :students


### DOJO CONTROLLER ROUTES ###
  get 'dojo/index'
  get 'dojo/new' => 'dojo#new'
  get 'dojo/:id/show' => 'dojo#show'
  get 'dojo/:id/edit' => 'dojo#edit'
  get 'dojo/:id/destroy' => 'dojo#destroy'

  post 'dojo/create' => 'dojo#create'
  post 'dojo/:id/update'=> 'dojo#update'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'dojo#index'

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
