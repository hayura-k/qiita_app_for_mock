class Request < ApplicationRecord
  require 'uri'
  require 'net/http'

  def request_url
    uri = URI('https://qiita.com/api/v2/items?page=1&per_page=1&query=created:>2022-01-01+stocks:>20')
    res = Net::HTTP.get_response(uri)
    results = JSON.parse(res.body)
  end
end
