require 'sinatra'
require 'faraday'
require 'net/http/persistent'


class App < Sinatra::Base

  get '/' do 

    url = "http://93.184.216.34"
    # url = "http://192.168.99.100:8090"
    # url = "auth_URL"

    # conn     = Faraday.new(:url => url) do |faraday|
    #   faraday.adapter Faraday.default_adapter # make requests with Net::HTTP
    # end

    # ## GET ##

    # response = conn.get do |req|
    #   req.url '/test'
    # end
    # response.body + ' called by 1!!!!'

    # Net::HTTP.get(url, '/test') + ' called by 1!!!!'

    http = Net::HTTP::Persistent.new 

    response = http.request url 

    http.shutdown
    response.body + ' called by 1!!!!'
  end

end