class Subscriber < ActiveRecord::Base

  validates_presence_of :name, :email,
                        :message => "Have to be in Subscriber"
  validates :email,
            :presence => true,
            :uniqueness => true,
            :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, :on => :create


  # @note: Collect subscribers emails
  def self.subscribers_emails
    all.pluck(:email)
  end

  def self.subscriber?(email)
    where(email: email).exists?
  end





end
