module EmailHelper
  def email
    ActionMailer::Base.deliveries.last
  end
end

World(EmailHelper)