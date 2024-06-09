# README

Welcome to the [Stock Tickers API](https://polygon.io/docs/stocks/get_v2_aggs_ticker__stocksticker__range__multiplier___timespan___from___to) (take home test applyed by Portrait).

This is a dockenized backend API service, which uses Swagger to document the API.

To run it:

1) Install Docker on your machine
2) Run `docker compose up`
3) In another tab run `docker compose exec web rails db:create`
4) Run `docker compose exec web rails db:migrate`
5) Run `docker compose exec web rails rswag:specs:swaggerize`
6) Access `http://localhost:3001/api-docs/index.html` to test the API endpoints
