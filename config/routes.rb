WeatherSoapApp::Application.routes.draw do

  devise_for :admins, :path => "admin", :skip => [:registrations], :controllers => { :sessions => "admins/sessions" }
    as :admin do
      get 'admins/edit' => 'devise/registrations#edit', :as => 'edit_admin_registration'
      put 'admins' => 'devise/registrations#update', :as => 'admin_registration'
      get 'admin', :to => 'admin#index', :as => :admin_root
    end
  apipie
  namespace :api do
    namespace :v6 do
      
        resources :weather_by_zips
      
    end # v6

namespace :v7 do
      
        resources :weather_by_zips
      
    end # v7

namespace :v8 do
      
        resources :weather_by_zips
      
    end # v8

namespace :v9 do
      
        resources :weather_by_zips
      
    end # v9

    namespace :v10 do
      
        resources :weather_by_zips
      
    end # v10

    # Mount rails engine gems.
    
  end

  namespace :admin do
    
      resources :weather_by_zips
    
  end

  get '/admin/extensions' => 'admin/extensions#index'

  get '/admin' => 'admin#index'

  root :to => 'admin#index'

  # Catch all for unmatched API routes.
  match '/api/*unmatched_route', to: 'api/api#raise_not_found!'
end
