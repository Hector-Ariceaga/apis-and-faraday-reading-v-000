class SearchesController < ApplicationController
  def search
  end

  def foursquare
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = 'HQ5UOYPOREGXYHBDOFTUKMV0C0YE0NVL1P1QM0DDEYJQZGT5'
      req.params['client_secret'] = 'ZQGJQBNSRATUOWJEWOEGY3POIJO41HHXNWJFRV3V1EOQHS2D'
      req.params['v'] = '20150201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
