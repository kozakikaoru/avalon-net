# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  resources :organizers, except: :show
  resources :tournaments, except: :show
end
