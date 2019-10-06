class Gist < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :owner, class_name: "User"
end
