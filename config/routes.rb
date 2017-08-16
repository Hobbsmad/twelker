Rails.application.routes.draw do
root 'static_pages#index'
get "/pages/:page" => "pages#show"

get '/static_pages/about', to: 'static_pages#about', as: :about
get '/static_pages/contact', to: 'static_pages#contact', as: :contact
get '/static_pages/client', to: 'static_pages#client', as: :client
end
