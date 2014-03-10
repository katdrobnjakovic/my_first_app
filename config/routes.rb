MyFirstApp::Application.routes.draw do

  resources :resume_entries

  devise_for :users
  root "pages#home"

  get "news_posts/index"
  get "/contact" => "pages#contact"
  get "/about" => "pages#about"
  get "/interesting_facts" => "pages#interesting_facts"
  get "/about_me" => "pages#about"
  get "/about_kat" => "pages#about"

  # news_posts resource
  resources :news_posts #codes all your routes for you

  # no longer need all the code below - if you name everything properly
  # get "/news_posts" => "news_posts#index" #what controller and what action
  # post "/news_posts" => "news_posts#create" #looks same as index but it is a post request!! so it goes to create :)
  # get "/news_posts/new" => "news_posts#new"
  # get "/news_posts/:id" => "news_posts#show", as: :news_post #form_for method needs this argument
  # get "/news_posts/:id/edit" => "news_posts#edit"
  # patch "/news_posts/:id" => "news_posts#update"
  # delete "/news_posts/:id" => "news_posts#destroy" #use the http delete method to use the destroy method
  # delete deletes the record from the database with no other consequence
  # destroy deletes the record and follows any rules to also delete those 



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
