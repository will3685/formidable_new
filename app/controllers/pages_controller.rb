class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    redirect_to feed_path(current_user.id) if user_signed_in?
  end

  def feed
  end
end
