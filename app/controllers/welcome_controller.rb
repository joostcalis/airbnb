class WelcomeController < ApplicationController

  def index
    @listings = Listing.all
  end
end
