Rails.application.routes.draw do

  namespace :authorize_it do
    resources :operations do
      get 'delete', on: :member
    end
    resources :application_class do
      get 'delete', on: :member
    end
    resources :application_scope do
      get 'delete', on: :member
    end
    resources :permissions do
      get 'delete', on: :member
    end
    resources :roles do
      get 'delete', on: :member
    end
    resources :groups do
      get 'delete', on: :member
    end
    resources :users do
      get 'delete', on: :member
    end
  end


  root 'authorize_it/users#index'

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
  #   namespace :admin_lte do
  #     # Directs /admin_lte/products/* to Admin::ProductsController
  #     # (app/controllers/admin_lte/products_controller.rb)
  #     resources :products
  #   end
end
