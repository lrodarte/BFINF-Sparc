Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home'
  get '/data' => 'agencies#index', as: :agencies
  get '/articles' => 'agencies#articles', as: :agencies_articles
  get '/agencies/:id' => 'agencies#show'

  get '/compare' => 'agencies#compare', as: :compare
  get '/search' => 'agencies#search', as: :search

  match '/404', to: 'errors#404', via: :all
  match '/500', to: 'errors#500', via: :all
end
