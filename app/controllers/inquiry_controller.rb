class InquiryController < ApplicationController
  skip_before_action :authorize  
  protect_from_forgery except: :confirm # searchアクションを除外
  
  def show
    # render layout: false
  end

  def confirm
    #render layout: false
    @mailSendTo = params[:mailSendTo]
    @guestname = params[:guestName]
    @content = params[:content]
    render :text => "旅行先 = #{params[:mailSendTo]}, 人数 = #{params[:num]}人"
  end

  def sendmail
    # User.create(name: "田中", email: "tanaka@test.co.jp", ruby:"タナカ")
    # user = User.create(name: "田中", email: "tanaka@test.co.jp", ruby:"タナカ")
    # @mailSendTo = params[:mailSendTo]
    # @guestname = params[:guestName]
    # @content = params[:content]

    MessageMailer.hello(params[:guestName], params[:mailSendTo]).deliver
  end
end
