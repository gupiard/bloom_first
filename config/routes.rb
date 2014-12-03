Rails.application.routes.draw do
  # Routes for the Target_portfolio resource:
  # CREATE
  get('/target_portfolios/new', { :controller => 'target_portfolios', :action => 'new' })
  get('/create_target_portfolio', { :controller => 'target_portfolios', :action => 'create' })

  # READ
  get('/target_portfolios', { :controller => 'target_portfolios', :action => 'index' })
  get('/target_portfolios/:id', { :controller => 'target_portfolios', :action => 'show' })

  # UPDATE
  get('/target_portfolios/:id/edit', { :controller => 'target_portfolios', :action => 'edit' })
  get('/update_target_portfolio/:id', { :controller => 'target_portfolios', :action => 'update' })

  # DELETE
  get('/delete_target_portfolio/:id', { :controller => 'target_portfolios', :action => 'destroy' })
  #------------------------------

  # Routes for the Objective resource:
  # CREATE
  get('/objectives/new', { :controller => 'objectives', :action => 'new' })
  get('/create_objective', { :controller => 'objectives', :action => 'create' })

  # READ
  get('/objectives', { :controller => 'objectives', :action => 'index' })
  get('/objectives/:id', { :controller => 'objectives', :action => 'show' })

  # UPDATE
  get('/objectives/:id/edit', { :controller => 'objectives', :action => 'edit' })
  get('/update_objective/:id', { :controller => 'objectives', :action => 'update' })

  # DELETE
  get('/delete_objective/:id', { :controller => 'objectives', :action => 'destroy' })
  #------------------------------

  # Routes for the Account resource:
  # CREATE
  get('/accounts/new', { :controller => 'accounts', :action => 'new' })
  get('/create_account', { :controller => 'accounts', :action => 'create' })

  # READ
  get('/accounts', { :controller => 'accounts', :action => 'index' })
  get('/accounts/:id', { :controller => 'accounts', :action => 'show' })

  # UPDATE
  get('/accounts/:id/edit', { :controller => 'accounts', :action => 'edit' })
  get('/update_account/:id', { :controller => 'accounts', :action => 'update' })

  # DELETE
  get('/delete_account/:id', { :controller => 'accounts', :action => 'destroy' })
  #------------------------------

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
