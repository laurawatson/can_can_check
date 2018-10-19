class Role < ApplicationRecord
  has_many :user_roles
  has_many :users, through: :user_roles
  has_many :foos, through: :user_roles
  has_many :bars, through: :user_roles
end
