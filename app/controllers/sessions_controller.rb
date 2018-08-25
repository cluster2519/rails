class SessionsController < ApplicationController
  skip_before_action :authorize

  def index
    if session[:staff_name]
      @notice = "#{session[:staff_name]}でログインしています。"
    else
      @notice = "ログイン失敗 "
    end

    if params.key?(:name) || params.key?(:password)
      staff = Staff.find_by_name(params[:name])
      if staff && staff.authenticate(params[:password])
        session[:staff_name] = params[:name]
        redirect_to users_path
      else
        session[:staff_name] = nil
      end
    end

    def logout
      session[:staff_name] = nil
    end
  end
end