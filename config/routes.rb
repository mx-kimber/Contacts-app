Rails.application.routes.draw do
  get "/contacts" => "contacts#index"
  get "/contasts/:id" => "contacts#show"
  post "/contacts" => "contacts#create"

end
