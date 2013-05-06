class UserMailer < ActionMailer::Base
  default from: "dirkgrandjean@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.applicant_confirmation.subject
  #
  def applicant_confirmation(applicant)
    @applicant = applicant

    mail to: applicant.username + "@facebook.com", subject: "Greenpeace Belgium: Application confirmation"
  end

  def applicant_next_stage(applicant)
    @applicant = applicant

    mail to: applicant.username + "@facebook.com", subject: "Greenpeace Belgium: Successfull application"
  end

  def applicant_rejected(applicant)
    @applicant = applicant

    mail to: applicant.username + "@facebook.com", subject: "Greenpeace Belgium: Application status update"
  end
end
