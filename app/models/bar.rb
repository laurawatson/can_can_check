class Bar < ApplicationRecord
  has_many :user_roles, as: :subject
  has_many :roles, through: :user_roles
  has_many :users, through: :user_roles
end
