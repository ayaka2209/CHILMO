class ContactMailer < ApplicationMailer
  def contact_mail(team)
    @team = team
    # @team.kids.each do |kid|

      # mail to: kid.pearent.email, subject: "#{@team.name}の出欠確認のお知らせ"
    # end
    mail to: "test@test.com", subject: "#{@team.name}の出欠確認のお知らせ"
  end
end
