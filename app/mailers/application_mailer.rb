class ApplicationMailer < ActionMailer::Base
  # メールのFromヘッダーとして使用されるアドレス
  default from: 'from@example.com'
  layout 'mailer'
end
