Rails.application.routes.draw do
  root "monsters#index"

  get "/monsters", to: "monsters#index"
end
