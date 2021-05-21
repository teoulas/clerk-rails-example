class ApplicationController < ActionController::Base
  def clerk_user
    request.env["clerk_user"]
  end

  def clerk_user_signed_in?
    clerk_user.present?
  end

  helper_method :clerk_user, :clerk_user_signed_in?
end
