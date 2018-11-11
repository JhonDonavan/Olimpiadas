class Api::V1::ApplicationController < ActionController::API

    require 'rest-client'
    require 'json'
  
    BASE_URL = "http://localhost:3000/api/v1"
  
    def index
      value = RestClient.get "#{BASE_URL}/atleta"
  
      @users = JSON.parse(value, :symbolize_names => true)
    end   
end
