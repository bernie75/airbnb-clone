class Admin::FlatsController < ApplicationController
  def index
    # Let's anticipate on next week (with login)
    @flats = current_user.flat
  end
end
