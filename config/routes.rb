Rails.application.routes.draw do

  devise_for :admins
  resources :searches

  resources :adverts
  get 'control_panel' => 'adverts#controlpanel'

  resources :conditions

  resources :cities

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :provinces

  resources :categories
  devise_for :users
  
  root 'static_pages#home'

  get 'faq' => 'static_pages#faq'

  get 'sitemap' => 'static_pages#sitemap'

  get 'help' => 'static_pages#help'

  get 'howitworks' => 'static_pages#howitworks'

  get 'privacy' => 'static_pages#privacy'

  get 'terms' => 'static_pages#terms'

  get 'services' => 'static_pages#services'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
