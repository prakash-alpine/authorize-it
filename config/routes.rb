# == Route Map
#
#                                Prefix Verb   URI Pattern                                          Controller#Action
#         delete_authorize_it_operation GET    /authorize_it/operations/:id/delete(.:format)        authorize_it/operations#delete
#               authorize_it_operations GET    /authorize_it/operations(.:format)                   authorize_it/operations#index
#                                       POST   /authorize_it/operations(.:format)                   authorize_it/operations#create
#            new_authorize_it_operation GET    /authorize_it/operations/new(.:format)               authorize_it/operations#new
#           edit_authorize_it_operation GET    /authorize_it/operations/:id/edit(.:format)          authorize_it/operations#edit
#                authorize_it_operation GET    /authorize_it/operations/:id(.:format)               authorize_it/operations#show
#                                       PATCH  /authorize_it/operations/:id(.:format)               authorize_it/operations#update
#                                       PUT    /authorize_it/operations/:id(.:format)               authorize_it/operations#update
#                                       DELETE /authorize_it/operations/:id(.:format)               authorize_it/operations#destroy
# delete_authorize_it_application_class GET    /authorize_it/application_class/:id/delete(.:format) authorize_it/application_class#delete
#  authorize_it_application_class_index GET    /authorize_it/application_class(.:format)            authorize_it/application_class#index
#                                       POST   /authorize_it/application_class(.:format)            authorize_it/application_class#create
#    new_authorize_it_application_class GET    /authorize_it/application_class/new(.:format)        authorize_it/application_class#new
#   edit_authorize_it_application_class GET    /authorize_it/application_class/:id/edit(.:format)   authorize_it/application_class#edit
#        authorize_it_application_class GET    /authorize_it/application_class/:id(.:format)        authorize_it/application_class#show
#                                       PATCH  /authorize_it/application_class/:id(.:format)        authorize_it/application_class#update
#                                       PUT    /authorize_it/application_class/:id(.:format)        authorize_it/application_class#update
#                                       DELETE /authorize_it/application_class/:id(.:format)        authorize_it/application_class#destroy
# delete_authorize_it_application_scope GET    /authorize_it/application_scope/:id/delete(.:format) authorize_it/application_scope#delete
#  authorize_it_application_scope_index GET    /authorize_it/application_scope(.:format)            authorize_it/application_scope#index
#                                       POST   /authorize_it/application_scope(.:format)            authorize_it/application_scope#create
#    new_authorize_it_application_scope GET    /authorize_it/application_scope/new(.:format)        authorize_it/application_scope#new
#   edit_authorize_it_application_scope GET    /authorize_it/application_scope/:id/edit(.:format)   authorize_it/application_scope#edit
#        authorize_it_application_scope GET    /authorize_it/application_scope/:id(.:format)        authorize_it/application_scope#show
#                                       PATCH  /authorize_it/application_scope/:id(.:format)        authorize_it/application_scope#update
#                                       PUT    /authorize_it/application_scope/:id(.:format)        authorize_it/application_scope#update
#                                       DELETE /authorize_it/application_scope/:id(.:format)        authorize_it/application_scope#destroy
#        delete_authorize_it_permission GET    /authorize_it/permissions/:id/delete(.:format)       authorize_it/permissions#delete
#              authorize_it_permissions GET    /authorize_it/permissions(.:format)                  authorize_it/permissions#index
#                                       POST   /authorize_it/permissions(.:format)                  authorize_it/permissions#create
#           new_authorize_it_permission GET    /authorize_it/permissions/new(.:format)              authorize_it/permissions#new
#          edit_authorize_it_permission GET    /authorize_it/permissions/:id/edit(.:format)         authorize_it/permissions#edit
#               authorize_it_permission GET    /authorize_it/permissions/:id(.:format)              authorize_it/permissions#show
#                                       PATCH  /authorize_it/permissions/:id(.:format)              authorize_it/permissions#update
#                                       PUT    /authorize_it/permissions/:id(.:format)              authorize_it/permissions#update
#                                       DELETE /authorize_it/permissions/:id(.:format)              authorize_it/permissions#destroy
#              delete_authorize_it_role GET    /authorize_it/roles/:id/delete(.:format)             authorize_it/roles#delete
#                    authorize_it_roles GET    /authorize_it/roles(.:format)                        authorize_it/roles#index
#                                       POST   /authorize_it/roles(.:format)                        authorize_it/roles#create
#                 new_authorize_it_role GET    /authorize_it/roles/new(.:format)                    authorize_it/roles#new
#                edit_authorize_it_role GET    /authorize_it/roles/:id/edit(.:format)               authorize_it/roles#edit
#                     authorize_it_role GET    /authorize_it/roles/:id(.:format)                    authorize_it/roles#show
#                                       PATCH  /authorize_it/roles/:id(.:format)                    authorize_it/roles#update
#                                       PUT    /authorize_it/roles/:id(.:format)                    authorize_it/roles#update
#                                       DELETE /authorize_it/roles/:id(.:format)                    authorize_it/roles#destroy
#             delete_authorize_it_group GET    /authorize_it/groups/:id/delete(.:format)            authorize_it/groups#delete
#                   authorize_it_groups GET    /authorize_it/groups(.:format)                       authorize_it/groups#index
#                                       POST   /authorize_it/groups(.:format)                       authorize_it/groups#create
#                new_authorize_it_group GET    /authorize_it/groups/new(.:format)                   authorize_it/groups#new
#               edit_authorize_it_group GET    /authorize_it/groups/:id/edit(.:format)              authorize_it/groups#edit
#                    authorize_it_group GET    /authorize_it/groups/:id(.:format)                   authorize_it/groups#show
#                                       PATCH  /authorize_it/groups/:id(.:format)                   authorize_it/groups#update
#                                       PUT    /authorize_it/groups/:id(.:format)                   authorize_it/groups#update
#                                       DELETE /authorize_it/groups/:id(.:format)                   authorize_it/groups#destroy
#              delete_authorize_it_user GET    /authorize_it/users/:id/delete(.:format)             authorize_it/users#delete
#                    authorize_it_users GET    /authorize_it/users(.:format)                        authorize_it/users#index
#                                       POST   /authorize_it/users(.:format)                        authorize_it/users#create
#                 new_authorize_it_user GET    /authorize_it/users/new(.:format)                    authorize_it/users#new
#                edit_authorize_it_user GET    /authorize_it/users/:id/edit(.:format)               authorize_it/users#edit
#                     authorize_it_user GET    /authorize_it/users/:id(.:format)                    authorize_it/users#show
#                                       PATCH  /authorize_it/users/:id(.:format)                    authorize_it/users#update
#                                       PUT    /authorize_it/users/:id(.:format)                    authorize_it/users#update
#                                       DELETE /authorize_it/users/:id(.:format)                    authorize_it/users#destroy
#                                  root GET    /                                                    authorize_it/users#index
#

Rails.application.routes.draw do

  devise_for :users

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
