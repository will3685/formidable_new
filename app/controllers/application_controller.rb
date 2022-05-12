class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  add_flash_types :success, :failed

  def after_sign_in_path(resource)
    feed_path(ressouce.user_id)
  end
end
