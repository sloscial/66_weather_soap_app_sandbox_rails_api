WeatherSoapApp::Application.routes.draw do

  devise_for :admins, :path => "admin", :skip => [:registrations], :controllers => { :sessions => "admins/sessions" }
    as :admin do
      get 'admins/edit' => 'devise/registrations#edit', :as => 'edit_admin_registration'
      put 'admins' => 'devise/registrations#update', :as => 'admin_registration'
      get 'admin', :to => 'admin#index', :as => :admin_root
    end
  apipie
  namespace :api do
    namespace :v1 do
      
        resources :weather_by_zips
      
    end # v1

namespace :v2 do
      
        resources :weather_by_zips
      
    end # v2

    namespace :v3 do
      
        resources :weather_by_zips
      
    end # v3

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
