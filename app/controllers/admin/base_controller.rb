module Admin
  class BaseController < ApplicationController
    prepend_before_action :authenticate_admin!
    layout 'admin'

  private

    def authenticate_admin!
      authenticate_or_request_with_http_basic do |username, password|
        username == "admin" && password == "leaf kill will stream"
      end
    end

  end
end