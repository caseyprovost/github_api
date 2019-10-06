class User < ApplicationRecord
  devise(
    :confirmable,
    :lockable,
    :timeoutable,
    :database_authenticatable,
    :registerable,
    :recoverable,
    :validatable,
    :trackable
  )
end
