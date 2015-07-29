class Subscriber < ActiveRecord::Base

  validates_presence_of :name, :email,
                        :message => "Have to be in Subscriber"
  validates :email,
            :presence => true,
            :uniqueness => true,
            :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, :on => :create


  # @note: Collect subscribers emails
  def self.subscribers_emails
    self.all.pluck(:email)
  end

  def self.subscriber?(email)
    logger.info "In subscriber?:  email = #{email.inspect} "
    where(email: email).exists?
  end





end
