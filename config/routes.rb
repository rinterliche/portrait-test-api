Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/stock_tickers/search/:ticker_name/:multiplier/:timespan/:from/:to", to: "stock_tickers#search"
end
