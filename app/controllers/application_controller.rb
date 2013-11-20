class ApplicationController < ActionController::Base
  protect_from_forgery

  def page_title
    "Volunteer Finder"
  end
  helper_method :page_title
end
