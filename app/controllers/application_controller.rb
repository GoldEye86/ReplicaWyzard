class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def require_sudo
    require 'digest'
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && Digest::SHA1.hexdigest(password) == 'cadaa1ac9c7f736eddaebeaffc2501391b74c9df'
    end
  end
end
