class SearchController < ApplicationController
  def index
    location = params[:q]
    response = Faraday.get "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?api_key=KM6LFqtdyAOhSx1tOcfFRXbndHnwyAO0jCUgmFA0&radius=6&limit=10&fuel_type=LPG,ELEC&location=#{location}"
    @stations = JSON.parse(response.body)["fuel_stations"]
  end
end
