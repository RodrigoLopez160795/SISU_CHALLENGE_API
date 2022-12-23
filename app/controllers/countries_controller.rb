class CountriesController < ApplicationController
  def find_country
    @countries = Country.all
    render json: @countries
  end
end
