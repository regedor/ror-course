ActionController::Routing::Routes.draw do |map|
  map.resources :users, :member => { :delete => [:get] } , :collection => { :old => [:get]}
end
