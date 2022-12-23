class StatesController < ApplicationController
  def find_state
    @query = params[:country_id]
    @states = State.where(country_id: @query)
    if @states.length.positive?
      render json: @states
    else
      render json: { errors: 'No existe ese estado' }, status: :unprocessable_entity
    end
  end
end
