  ProjectSoftlineinformatica::Application.routes.draw do
  devise_for :users, :path => "auth", 
  :path_names =>{:sign_in => 'login', 
    :sign_out => 'logout', 
    :password => 'secret', 
    :confirmation => 'verification',
    :unlock => 'unblock', 
    :registration => 'register'},

    :controllers => {:sessions => "sessions"} do
      get 'auth/logout' => 'sessions#destroy', :as => :destroy_user_session
    end

  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'welcome#index'
  match 'test' =>  'welcome#test', :via => :get, :as => :test

  resources :users
  resources :companies do
    resources :soluctions, :except => [:index,:new]
  end

  match 'new_soluction' => 'soluctions#new', :via => :get, :as => :new_soluction
  match 'create_soluction' => 'soluctions#create_soluction', :via => :post, :as =>  :create_soluction
  match 'index_soluctions' => 'soluctions#index_soluctions', :via => :get, :as => :index_soluctions
  match 'new_contact' => 'contacts#new', :via => :get, :as => :new_contact
  match 'index_contacts' => 'contacts#index', :via => :get, :as => :contacts
  match 'contacts/get_states/:id' => 'contacts#get_states'
  match 'information_contacts' => 'contacts#information', :as => :information_contacts

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
