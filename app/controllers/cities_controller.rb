class CitiesController < ApplicationController
  def find_cities
    @query = params[:state_id]
    @cities = City.where(state_id: @query)
    if @cities.length.positive?
      render json: @cities
    else
      render json: { errors: "No existe esa ciudad" }, status: :unprocessable_entity
    end
  end
end
