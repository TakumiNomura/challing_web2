class ApplicationController < ActionController::Base
  def hello
    render html: "bad!, world!"
  end
end
