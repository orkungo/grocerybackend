class ApplicationController < ActionController::Base
  protect_from_forgery
  include Mobylette::RespondToMobileRequests

  mobylette_config do |config|
    config[:fallback_chains] = { mobile: [:mobile, :html] }
    config[:skip_xhr_requests] = false
    config[:mobile_user_agents] = proc { %r{android}i }
  end


end
