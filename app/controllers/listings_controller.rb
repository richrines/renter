class ListingsController < ActionController::Base
  def index
    @listings = Listing.all
    render json: @listings
  end
end
