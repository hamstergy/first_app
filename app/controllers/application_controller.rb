class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  has_mobile_fu

   def set_mobile_format
    is_device?("ipad") ? request.format = :html : super
  end
end
