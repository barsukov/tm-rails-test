class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  ROLES = [:admin,:campaign_manager].freeze

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me  ,:role
  # attr_accessible :title, :body
  validates :role, :presence => true, :inclusion => { :in => ROLES + ROLES.map(&:to_s) }

  def role
    super && super.to_sym
  end

end
