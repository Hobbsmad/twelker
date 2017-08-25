Rails.application.routes.draw do
root 'static_pages#index'
get "/pages/:page" => "pages#show"

get '/static_pages/about', to: 'static_pages#about', as: :about
get '/static_pages/contact', to: 'static_pages#contact', as: :contact
post '/static_pages/contactemail', to: 'static_pages#contactemail'
get '/static_pages/client', to: 'static_pages#client', as: :client
get '/static_pages/training', to: 'static_pages#training', as: :training
get '/static_pages/statement', to: 'static_pages#statement', as: :statement
end
