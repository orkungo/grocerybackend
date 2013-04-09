class ApplicationController < ActionController::Base
  protect_from_forgery
  include Mobylette::RespondToMobileRequests



  def force_mobile_format
    params[:format] = 'mobile'
  end

end
