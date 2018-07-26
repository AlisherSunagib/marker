Rails.application.routes.draw do
  resources :university_pulls
  resources :estimations
  resources :disciplines
  resources :universities
  resources :specialities
  resources :speciality_pulls
  resources :syllabuses
  resources :roles
  get 'sessions/new'
  resources :users
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/signup',   to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end