class ApplicationController < ActionController::Base
  protect_from_forgery
  include Mobylette::RespondToMobileRequests

  private

  def force_mobile_format
    params[:format] = 'mobile'
  end



end
