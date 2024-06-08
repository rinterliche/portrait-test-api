require 'swagger_helper'

RSpec.describe 'stock_tickers', type: :request do

  path '/stock_tickers/search/{ticker_name}/{multiplier}/{timespan}/{from}/{to}' do
    # You'll want to customize the parameter types...
    parameter name: 'ticker_name', in: :path, type: :string, description: 'ticker_name'
    parameter name: 'multiplier', in: :path, type: :string, description: 'multiplier'
    parameter name: 'timespan', in: :path, type: :string, description: 'timespan'
    parameter name: 'from', in: :path, type: :string, description: 'from'
    parameter name: 'to', in: :path, type: :string, description: 'to'

    get('search stock_ticker') do
      response(200, 'successful') do
        let(:ticker_name) { '123' }
        let(:multiplier) { '123' }
        let(:timespan) { '123' }
        let(:from) { '123' }
        let(:to) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
