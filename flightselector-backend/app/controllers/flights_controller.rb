class FlightsController < ApplicationController
  before_action :set_flight, only: %i[ show edit update destroy ]

  # GET /flights or /flights.json
  def index
    search_query = params[:query]
    matches = Flight.where("destination_full_name like ?", "%#{search_query}%").or(Flight.where("origin_full_name like ?", "%#{search_query}%"))
    .or(Flight.where("destination like ?", "%#{search_query}%")).or(Flight.where("origin like ?", "%#{search_query}%"))
    render json: matches
  end

  def find_flight_names
    search_query = params[:query]
    matches = nil
    matches = Flight.where("destination_full_name like ?", "%#{search_query}%").or(Flight.where("origin_full_name like ?", "%#{search_query}%"))
    .or(Flight.where("destination like ?", "%#{search_query}%")).or(Flight.where("origin like ?", "%#{search_query}%"))
    final_matches = []
    matches.pluck(:destination_full_name, :origin_full_name).each do |match|
      match.each do |station|
        final_matches.push(station)
      end
    end

    if final_matches.length() == 0 then
      render json: []
    else
    render json: final_matches.uniq!
    end
  end


end
