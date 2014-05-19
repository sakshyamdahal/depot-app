class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :get_current_time
  before_action :authorize

  def get_current_time
  	@time = Time.now.to_formatted_s(:short)
  end

  protected
  	def authorize
  		unless User.find_by(id: session[:user_id])
  			redirect_to login_url, notice: "Please login"
  		end
  	end
end
