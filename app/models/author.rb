class Author < ActiveRecord::Base

  authenticates_with_sorcery!

  validates_confirmation_of :password, message: "should match confirmation", if: :password

  # validates :email,
  #           :presence => true,
  #           :uniqueness => true,
  #           :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }


end
