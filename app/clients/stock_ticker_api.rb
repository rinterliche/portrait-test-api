module StockTickerApi
  class Client
    def search_stock_ticker(ticker_name, multiplier, timespan, from, to)
      request(
        http_method: :get,
        endpoint: "aggs/ticker/#{ticker_name}/range/#{multiplier}/#{timespan}/#{from}/#{to}?apiKey=#{ENV['STOCK_TICKER_API_KEY']}"
      )
    end

    private

      def client
        @_client ||= Faraday.new(ENV['STOCK_TICKER_API_URL']) do |client|
          client.request :url_encoded
          client.adapter Faraday.default_adapter
        end
      end

      def request(http_method:, endpoint:, params: {})
        response = client.public_send(http_method, endpoint, params)
        parsed_response = Oj.load(response.body)

        return parsed_response if parsed_response["status"] == "OK"

        raise StandardError.new "Error: #{parsed_response['error']}"
      end
  end
end
