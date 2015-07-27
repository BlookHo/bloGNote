class Subscriber < ActiveRecord::Base

  # validations

  # @note: Collect subscribers emails
  def self.subscribers_emails
    arr = []
    arr = self.all.pluck(:email)
    logger.info "In subscribers_emails:  arr = #{arr}"
    arr

  end





end
