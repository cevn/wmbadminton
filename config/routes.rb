WMBadminton::Application.routes.draw do
  devise_for :admins
  root 'static_pages#home'

  resources :players

  #match '/signup',      to: 'players#new',              via: 'get'
  match '/signin',      to: 'sessions#new',             via: 'get'
  match '/signout',     to: 'sessions#destroy',         via: 'delete'
  match '/about',       to: 'static_pages#about',       via: 'get'
  match '/contact',     to: 'static_pages#contact',     via: 'get'
  #match '/tournament',  to: 'static_pages#tournament',  via: 'get'
  #match '/rules',       to: 'static_pages#rules',       via: 'get'
  match '/gallery',     to: 'static_pages#gallery',     via: 'get'

  #match '/teamlist',    to: 'static_pages#md',          via: 'get'
  #match '/md',          to: 'static_pages#md',          via: 'get'
  #match '/wd',          to: 'static_pages#wd',          via: 'get'
  #match '/xd',          to: 'static_pages#xd',          via: 'get'
  #match '/brackets',    to: 'static_pages#brackets',    via: 'get' 
  match '/results',     to: 'static_pages#results',     via: 'get' 

  # Sitemap stuff
  match '/sitemap.xml.gz' => 'sitemaps#show',           via: 'get'
end
