class Author < ActiveRecord::Base

  authenticates_with_sorcery!

  validates_confirmation_of :password, message: "should match confirmation", if: :password

  # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
# end
  # validates :email,
  #           :presence => true,
  #           :uniqueness => true,
  #           :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

  def self.admin_exists?
    # logger.info "In admin_exists?: exists? = #{Author.where(email: 'admin@ad.ad').exists?}"
    Author.where(email: 'admin@admin.ad').exists?
  end

  def self.create_admin
    Author.create(name: 'admin', email: 'admin@admin.ad', password: 'admin', password_confirmation: 'admin')
    # logger.info "In create_admin: exists? = #{Author.where(email: 'admin@ad.ad').exists?}"
  end


end
