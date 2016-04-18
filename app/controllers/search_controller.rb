class SearchController < ApplicationController
  def index
    params[:q]
    require "pry"; binding.pry
    Faraday.get "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?"
  end


end
