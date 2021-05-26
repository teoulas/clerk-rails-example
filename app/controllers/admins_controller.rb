class AdminsController < ApplicationController
  before_action :require_clerk_session

  def show

  end

  private
  def require_clerk_session
    redirect_to clerk_sign_in_url unless clerk_session
  end
end
