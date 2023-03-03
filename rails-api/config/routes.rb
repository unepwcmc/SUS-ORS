# frozen_string_literal: true

# @see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  namespace :v1 do
    namespace :admin do
      resources :tags
      resources :meas do
        resources :questionnaires
      end
      devise_for :users,
        as: :admin,
        path: 'auth',
        controllers: {
          confirmations: 'v1/admin/users/confirmations',
          # omniauth_callbacks: 'v1/admin/users/omniauth_callbacks',
          passwords: 'v1/admin/users/passwords',
          registrations: 'v1/admin/users/registrations',
          sessions: 'v1/admin/users/sessions',
          unlocks: 'v1/admin/users/unlocks'
        }
      get 'auth/user', to: 'users/current_user#show'
      resources :users
    end
    get :navigation, to: 'navigation#index'
  end
end
