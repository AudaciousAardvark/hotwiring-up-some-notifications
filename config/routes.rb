Rails.application.routes.draw do
  get "/", to: "pages#home"

  get "/hello", to: "pages#hello"
  get "/goodbye", to: "pages#goodbye"
end
