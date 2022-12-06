class ContactMailer < ApplicationMailer
  def contact_mail(team)
    @team = team

    mail to: "test@test.com", subject: "#{@team.name}の出欠確認のお知らせ"
  end
end
