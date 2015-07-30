class Author < ActiveRecord::Base

  authenticates_with_sorcery!

  has_many :articles

  validates_confirmation_of :password, message: "should match confirmation", if: :password
  validates_presence_of :name, :message => "Have to be in Author"

  validates :email,
            :presence => true,
            :uniqueness => true,
            :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, :on => :create

  # @note: check existence of admin
  # todo: email админа записан прямо в модели, и админ создается через вызов метода модели,
  # todo: хотя для этого есть db:seed rake task - Ok
    def self.admin_exists?
    Author.where(email: 'admin@admin.ad').exists?
  end

  def self.create_admin
    Author.create(name: 'admin', email: 'admin@admin.ad', password: 'admin', password_confirmation: 'admin')
  end


end
