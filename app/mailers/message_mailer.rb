class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.hello.subject
  #
  def hello(name, mailsendto)
    @greeting = "Hi" + " 名前:" + name + " メールアドレス：" + mailsendto

    #mail to: "to@example.org"
    mail(to: 'test@example.co.jp', from: 'from@example.co.jp', subject: '送信テストaaa' )
  end
end
