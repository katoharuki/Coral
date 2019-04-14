class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def coral
    render html: "Coral"
  end
end
