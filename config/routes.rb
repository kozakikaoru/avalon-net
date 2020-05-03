# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  resources :organizers, except: :show
  resources :players, except: :show
  resources :tournaments, except: :show do
    resource :results, except: :show, param: nil
  end
end
