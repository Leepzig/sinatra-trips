require "pry"

class TripController < ApplicationController

  get "/trips" do
    trips = Trip.all
    trips.to_json
  end

  get "/trips/:id" do
    find_trip
    @trip.to_json
  end

  post "/trips" do
    trip = Trip.create(params)
    trip.to_json
  end

  patch "/trips/:id" do
    find_trip
    @trip.update(params)
    @trip.to_json
  end

  delete "/trips/:id" do 
    find_trip
    @trip.destroy
    @trip.to_json
  end

  private

    def find_trip
      @trip = Trip.find_by_id(params[:id])
    end

end