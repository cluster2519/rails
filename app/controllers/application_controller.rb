class ApplicationController < ActionController::Base
  before_action :authorize

  protect_from_forgery with: :exception

  protected

  def authorize
      unless Staff.find_by_name(session[:staff_name])
        redirect_to sessions_index_path, notice: "ログインして下さい。"
      end
  end

end
