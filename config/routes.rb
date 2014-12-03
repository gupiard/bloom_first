Rails.application.routes.draw do

  devise_for :users
  root 'objectives#index'

  # Routes for the Holding resource:
  # CREATE
  get('/holdings/new', { :controller => 'holdings', :action => 'new' })
  get('/create_holding', { :controller => 'holdings', :action => 'create' })

  # READ
  get('/holdings', { :controller => 'holdings', :action => 'index' })
  get('/holdings/:id', { :controller => 'holdings', :action => 'show' })

  # UPDATE
  get('/holdings/:id/edit', { :controller => 'holdings', :action => 'edit' })
  get('/update_holding/:id', { :controller => 'holdings', :action => 'update' })

  # DELETE
  get('/delete_holding/:id', { :controller => 'holdings', :action => 'destroy' })
  #------------------------------

  # Routes for the Price resource:
  # CREATE
  get('/prices/new', { :controller => 'prices', :action => 'new' })
  get('/create_price', { :controller => 'prices', :action => 'create' })

  # READ
  get('/prices', { :controller => 'prices', :action => 'index' })
  get('/prices/:id', { :controller => 'prices', :action => 'show' })

  # UPDATE
  get('/prices/:id/edit', { :controller => 'prices', :action => 'edit' })
  get('/update_price/:id', { :controller => 'prices', :action => 'update' })

  # DELETE
  get('/delete_price/:id', { :controller => 'prices', :action => 'destroy' })
  #------------------------------

  # Routes for the Etf resource:
  # CREATE
  get('/etfs/new', { :controller => 'etfs', :action => 'new' })
  get('/create_etf', { :controller => 'etfs', :action => 'create' })

  # READ
  get('/etfs', { :controller => 'etfs', :action => 'index' })
  get('/etfs/:id', { :controller => 'etfs', :action => 'show' })

  # UPDATE
  get('/etfs/:id/edit', { :controller => 'etfs', :action => 'edit' })
  get('/update_etf/:id', { :controller => 'etfs', :action => 'update' })

  # DELETE
  get('/delete_etf/:id', { :controller => 'etfs', :action => 'destroy' })
  #------------------------------

  # Routes for the Allocation resource:
  # CREATE
  get('/allocations/new', { :controller => 'allocations', :action => 'new' })
  get('/create_allocation', { :controller => 'allocations', :action => 'create' })

  # READ
  get('/allocations', { :controller => 'allocations', :action => 'index' })
  get('/allocations/:id', { :controller => 'allocations', :action => 'show' })

  # UPDATE
  get('/allocations/:id/edit', { :controller => 'allocations', :action => 'edit' })
  get('/update_allocation/:id', { :controller => 'allocations', :action => 'update' })

  # DELETE
  get('/delete_allocation/:id', { :controller => 'allocations', :action => 'destroy' })
  #------------------------------

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
