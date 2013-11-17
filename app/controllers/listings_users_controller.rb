class ListingsUsersController < ActionController::Base
  def create
    ListingsUser.new(listings_user_params)
    render text: 'success'
  end

  private

  def listings_user_params
    params.require(:listings_users).permit(:user_id, :listing_id, :liked, :viewed)
  end
end
