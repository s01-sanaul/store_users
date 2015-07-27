Rails.application.routes.draw do
  get "/new/" => "application#new"
  get "/show/:id" => "application#show"
  get "/create/" => "application#create"
end
