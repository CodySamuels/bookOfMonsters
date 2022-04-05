Rails.application.routes.draw do
  root "monsters#index"

  get "/monsters", to: "monsters#index"
  get "/monsters/:id", to: "monsters#show"
end
