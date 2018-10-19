class User < ApplicationRecord
  has_many :user_roles, as: :subject
  has_many :roles, through: :user_roles
  has_many :bars, through: :user_roles
  has_many :foos, through: :user_roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  def admin?
    roles.find_by(name: 'admin')
  end

  def adviser?
    roles.find_by(name: 'adviser')
  end
end
