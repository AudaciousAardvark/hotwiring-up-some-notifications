Rails.application.routes.draw do
  get "/", to: "pages#home"

  post "/hello", to: "pages#hello"
  post "/goodbye", to: "pages#goodbye"
end
