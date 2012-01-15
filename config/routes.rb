SibcApp::Application.routes.draw do
  #get "sessions/new"
  get "species/new"

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  resources :microposts, :only => [:create, :destroy]
  resources :species

  match '/signup',  :to => 'users#new'
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'

  match '/news', :to => 'pages#news'
  match '/surveys', :to => 'pages#surveys'
  match '/sightings', :to => 'species#new'
  match '/enquiry', :to => 'pages#enquiry'
  match '/recording', :to => 'pages#recording'
  match '/about', :to => 'pages#about'
  match '/contact', :to => 'pages#contact'
  match '/help', :to => 'pages#help'

  root :to => 'pages#home'

end
