class StockTickersController < ApplicationController
  def search
    stock_ticker_client = StockTickerApi::Client.new

    stock_ticker = stock_ticker_client.search_stock_ticker(
      params[:ticker_name],
      params[:multiplier],
      params[:timespan],
      params[:from],
      params[:to]
    )

    render json: stock_ticker
  end
end
