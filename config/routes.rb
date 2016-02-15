TheGingerArmadillo::Application.routes.draw do
  root 'public_pages#frontispiece'
  match '/book',               to: 'public_pages#book',      via: 'get'
  match '/community',          to: 'public_pages#community', via: 'get'
  match '/community/giveaway', to: 'public_pages#giveaway',  via: 'get'
  match '/contact',            to: 'public_pages#contact',   via: 'get'
  match '/locate',             to: 'public_pages#locate',    via: 'get'
  match '/menu',               to: 'public_pages#menu',      via: 'get'
  match '/story',              to: 'public_pages#story',     via: 'get'
  match '/newsletter',         to: 'public_pages#newsletter',via: 'get'

  # Legacy public page routes
  match '/bookus',              to: 'public_pages#book',     via: 'get'
  match '/community/rules.php', to: 'public_pages#giveaway', via: 'get'
  match '/contactus',           to: 'public_pages#contact',  via: 'get'
  match '/findus',              to: 'public_pages#locate',   via: 'get'
  match '/ourstory',            to: 'public_pages#story',    via: 'get'
  # --

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  #
  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  #
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  #
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  #
  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  #
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
  #
  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end
  #
  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  #
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable
  #
  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
