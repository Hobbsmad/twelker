Rails.application.routes.draw do
root 'static_pages#index'
get "/pages/:page" => "pages#show"

get '/static_pages/about', to: 'static_pages#about', as: :about
end
