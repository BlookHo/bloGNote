class Subscriber < ActiveRecord::Base

  # validations



  # @note: Collect subscribers emails
  def self.subscribers_emails
    self.all.pluck(:email)
  end



end
