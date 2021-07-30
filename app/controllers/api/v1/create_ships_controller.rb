require 'faker'

class Api::V1::CreateShipsController < ApplicationController
  def new
    ship_data = {
      name: Faker::Name.unique.name,
      origin: Faker::Company.name,
      passenger_count: Faker::Number.within(range: 1..10),
      status: :arrived
    }

    render json: ship_data
  end
end
