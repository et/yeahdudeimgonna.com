class PublishedItinerariesController < ApplicationController
  def show
    @itinerary = PlanB::Itinerary.find params[:slug]
  end
end
