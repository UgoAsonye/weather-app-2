#frozen_string_literal: true

require 'net/http'
class HomeController < ApplicationController
    def index
        url = "https://api.openweathermap.org/data/2.5/weather?lat=41.881832&lon=-87.623177&units=imperial@appid=#{API_key}"
        uri = URI(url)
        res = Net::HTTP.get_response(uri)
        data = JSON.parse(res.body)
    end
end