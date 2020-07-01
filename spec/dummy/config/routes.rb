# frozen_string_literal: true

Rails.application.routes.draw do
  draw :admin
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  subdomain ENV['DUMMY_ENV'] do
    get '/falsy_subdomain', to: 'subdomain#falsy', as: :falsy_subdomain
  end

  subdomain 'truthy' do
    get '/truthy_subdomain', to: 'subdomain#truthy', as: :truthy_subdomain
  end
end
