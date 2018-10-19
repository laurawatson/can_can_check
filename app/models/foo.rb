class Foo < ApplicationRecord
  has_many :user_roles, as: :subject
end
