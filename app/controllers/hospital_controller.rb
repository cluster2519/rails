class HospitalController < ApplicationController
  skip_before_action :authorize

  def show
    @msg = 'msg:メッセージ変数の動作確認'
    # render layout: false
  end
end
